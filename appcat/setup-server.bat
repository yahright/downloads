@echo off
setlocal
chcp 65001 >nul
set "APPCAT_SETUP_FILE=%~f0"
powershell.exe -NoLogo -NoProfile -ExecutionPolicy Bypass -Command "try { $parts = [IO.File]::ReadAllText($env:APPCAT_SETUP_FILE) -split '(?m)^#===APPCAT-SERVER===\r?$', 2; if ($parts.Count -ne 2) { throw 'Incomplete setup file. Download it again.' }; & ([scriptblock]::Create($parts[1])) } catch { Write-Host $_ -ForegroundColor Red; exit 1 }"
set "APPCAT_EXIT=%ERRORLEVEL%"
if not "%APPCAT_SERVER_NO_PAUSE%"=="1" pause
exit /b %APPCAT_EXIT%
#===APPCAT-SERVER===
$ErrorActionPreference = 'Stop'
[Console]::OutputEncoding = New-Object System.Text.UTF8Encoding
[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
$ProgressPreference = 'SilentlyContinue'
$serverHome = if ($env:APPCAT_SERVER_HOME) { [IO.Path]::GetFullPath($env:APPCAT_SERVER_HOME) } else { Join-Path $env:LOCALAPPDATA 'AppCatServer' }
$binDir = Join-Path $serverHome 'bin'
$storeDir = Join-Path $serverHome 'store'
$stateDir = Join-Path $serverHome 'state'
$logDir = Join-Path $serverHome 'logs'
$appcat = Join-Path $binDir 'appcat.exe'
$transcript = $false
$exitCode = 0

function Download-File([string]$Url, [string]$Destination) {
    for ($attempt = 1; $attempt -le 3; $attempt++) {
        try {
            Invoke-WebRequest -Uri $Url -OutFile $Destination -UseBasicParsing -TimeoutSec 120
            return
        } catch {
            if ($attempt -eq 3) { throw "取得できません: $Url`n$($_.Exception.Message)" }
            Write-Host "取得を再試行します ($attempt/3)..." -ForegroundColor Yellow
        }
    }
}

function Invoke-AppCat([string[]]$CommandArgs) {
    $previousPreference = $ErrorActionPreference
    $nativeExit = 1
    try {
        # PS 5.1 turns redirected native stderr into ErrorRecord objects. Keep
        # streaming them to both the screen and transcript, then check exit status.
        $ErrorActionPreference = 'Continue'
        $global:LASTEXITCODE = 1
        & $appcat --root $stateDir @CommandArgs 2>&1 | ForEach-Object { Write-Host $_.ToString() }
        $nativeExit = $LASTEXITCODE
    } finally { $ErrorActionPreference = $previousPreference }
    if ($nativeExit -ne 0) { throw "AppCat の処理に失敗しました (終了コード $nativeExit): $($CommandArgs -join ' ')" }
}

function Install-ServerBinary {
    # Environment variables work on Windows PowerShell 5.1, including x64 emulation on ARM64.
    $architecture = if ($env:PROCESSOR_ARCHITEW6432) { $env:PROCESSOR_ARCHITEW6432 } else { $env:PROCESSOR_ARCHITECTURE }
    $arch = switch ($architecture.ToUpperInvariant()) {
        'AMD64' { 'amd64' }
        'ARM64' { 'arm64' }
        default { throw "Windows x64 / ARM64 が必要です。検出したCPU: $architecture" }
    }
    $manifestUrl = if ($env:APPCAT_SERVER_MANIFEST_URL) { $env:APPCAT_SERVER_MANIFEST_URL } else { 'https://raw.githubusercontent.com/yahright/downloads/main/appcat/latest-windows.json' }
    $temporaryDir = Join-Path $serverHome ('download-' + [guid]::NewGuid().ToString('N'))
    New-Item -ItemType Directory -Path $temporaryDir | Out-Null
    try {
        $manifestPath = Join-Path $temporaryDir 'latest-windows.json'
        Write-Host '[1/3] AppCat を取得します（GitHubログイン不要）'
        Download-File $manifestUrl $manifestPath
        $manifest = Get-Content -LiteralPath $manifestPath -Raw -Encoding UTF8 | ConvertFrom-Json
        if ($manifest.schema -ne 1 -or $manifest.version -notmatch '^\d+\.\d+\.\d+$' -or [version]$manifest.version -lt [version]'0.1.6') {
            throw '配布情報が不正、またはサーバー機能に対応していません。'
        }
        $artifacts = @($manifest.artifacts | Where-Object { $_.os -eq 'windows' -and $_.arch -eq $arch })
        if ($artifacts.Count -ne 1 -or $artifacts[0].sha256 -notmatch '^[a-fA-F0-9]{64}$') { throw "Windows $arch の配布情報が不正です。" }
        $artifact = $artifacts[0]
        $archive = Join-Path $temporaryDir 'appcat.zip'
        Download-File $artifact.url $archive
        $hasher = [Security.Cryptography.SHA256]::Create()
        $stream = [IO.File]::OpenRead($archive)
        try { $actual = [BitConverter]::ToString($hasher.ComputeHash($stream)).Replace('-', '') } finally { $stream.Dispose(); $hasher.Dispose() }
        if ($actual -ne $artifact.sha256) { throw 'SHA-256 が一致しないため、取得したファイルを実行しません。もう一度実行してください。' }
        $expanded = Join-Path $temporaryDir 'expanded'
        [void][Reflection.Assembly]::LoadWithPartialName('System.IO.Compression.FileSystem')
        [IO.Compression.ZipFile]::ExtractToDirectory($archive, $expanded)
        $candidate = Join-Path $expanded 'appcat.exe'
        $reportedVersion = & $candidate --version
        if ($LASTEXITCODE -ne 0 -or ($reportedVersion -join '').Trim() -ne "appcat $($manifest.version)") { throw 'AppCat の起動・バージョン確認に失敗しました。' }
        New-Item -ItemType Directory -Force -Path $binDir | Out-Null
        Copy-Item -LiteralPath $candidate -Destination $appcat -Force
        # The server only needs the CLI. No PATH, shortcuts, registry or user app installation.
    } finally {
        # This exact GUID directory was created above, inside serverHome.
        $resolvedTemporary = [IO.Path]::GetFullPath($temporaryDir)
        $allowedParent = [IO.Path]::GetFullPath($serverHome).TrimEnd('\') + '\'
        if ($resolvedTemporary.StartsWith($allowedParent, [StringComparison]::OrdinalIgnoreCase) -and (Test-Path -LiteralPath $resolvedTemporary)) {
            Remove-Item -LiteralPath $resolvedTemporary -Recurse -Force
        }
    }
}

function Enable-LanAccess([int]$Port) {
    if ($env:APPCAT_SERVER_SKIP_FIREWALL -eq '1') { return }
    $marker = Join-Path $serverHome "firewall-$Port.ok"
    if (Test-Path -LiteralPath $marker) { return }
    Write-Host 'LAN配信用の受信許可を設定します。Windowsの確認画面で「はい」を選んでください。'
    $escapedProgram = $appcat.Replace("'", "''")
    $ruleName = "AppCatServer-$Port"
    $firewallScript = @"
`$ErrorActionPreference = 'Stop'
try {
    `$existing = Get-NetFirewallRule -Name '$ruleName' -ErrorAction SilentlyContinue
    if (`$existing) { Remove-NetFirewallRule -Name '$ruleName' }
    New-NetFirewallRule -Name '$ruleName' -DisplayName 'AppCat Server (LAN $Port)' -Direction Inbound -Action Allow -Protocol TCP -LocalPort $Port -Program '$escapedProgram' -RemoteAddress LocalSubnet -Profile Any | Out-Null
    exit 0
} catch { exit 1 }
"@
    $encoded = [Convert]::ToBase64String([Text.Encoding]::Unicode.GetBytes($firewallScript))
    try {
        $process = Start-Process -FilePath 'powershell.exe' -ArgumentList @('-NoLogo', '-NoProfile', '-EncodedCommand', $encoded) -Verb RunAs -WindowStyle Hidden -Wait -PassThru
        if ($process.ExitCode -ne 0) { throw 'ファイアウォールの設定に失敗しました。' }
        [IO.File]::WriteAllText($marker, 'LocalSubnet TCP ' + $Port)
    } catch {
        Write-Host "受信許可は未設定です。このPC内では使えますが、別PCから接続できない場合があります。次回起動時に再試行します。`n$($_.Exception.Message)" -ForegroundColor Yellow
    }
}

try {
    foreach ($directory in @($serverHome, $logDir)) { New-Item -ItemType Directory -Force -Path $directory | Out-Null }
    $logPath = Join-Path $logDir ((Get-Date -Format 'yyyyMMdd-HHmmss-fff') + '.log')
    Start-Transcript -LiteralPath $logPath | Out-Null
    $transcript = $true
    Write-Host 'AppCat 配信サーバー' -ForegroundColor Cyan
    Write-Host "保存先: $serverHome"
    Write-Host "ログ: $logPath"
    Write-Host '公開GitHubのみ使用します。アカウント・トークン・Git・gh は不要です。'
    $settingsPath = Join-Path $serverHome 'server-settings.json'
    if (-not (Test-Path -LiteralPath $settingsPath)) {
        [IO.File]::WriteAllText($settingsPath, (@{ port = 8765; repository = 'yahright/downloads'; apps = @() } | ConvertTo-Json), [Text.UTF8Encoding]::new($false))
    }
    $settings = Get-Content -LiteralPath $settingsPath -Raw -Encoding UTF8 | ConvertFrom-Json
    $port = [int]$settings.port
    if ($port -lt 1 -or $port -gt 65535) { throw 'server-settings.json の port は1～65535で指定してください。' }
    $action = $env:APPCAT_SERVER_ACTION
    if ($action -and $action -notin @('start', 'sync')) { throw 'APPCAT_SERVER_ACTION は start / sync で指定してください。' }
    if (-not (Test-Path -LiteralPath $appcat -PathType Leaf)) { Install-ServerBinary }
    Invoke-AppCat -CommandArgs @('--version')

    # Keep the downloaded batch in the server folder so the original file can be moved away.
    $runner = Join-Path $serverHome 'server-runner.bat'
    if ([IO.Path]::GetFullPath($env:APPCAT_SETUP_FILE) -ne [IO.Path]::GetFullPath($runner)) {
        Copy-Item -LiteralPath $env:APPCAT_SETUP_FILE -Destination $runner -Force
    }
    foreach ($mode in @('start', 'sync')) {
        $wrapper = "@echo off`r`nsetlocal`r`nset `"APPCAT_SERVER_HOME=%~dp0`"`r`nset `"APPCAT_SERVER_ACTION=$mode`"`r`ncall `"%~dp0server-runner.bat`"`r`nexit /b %errorlevel%`r`n"
        [IO.File]::WriteAllText((Join-Path $serverHome "$mode-server.bat"), $wrapper, [Text.Encoding]::ASCII)
    }

    $catalogPath = Join-Path $storeDir 'catalog.json'
    $hasPackages = $false
    if (Test-Path -LiteralPath $catalogPath) {
        $hasPackages = @((Get-Content -LiteralPath $catalogPath -Raw -Encoding UTF8 | ConvertFrom-Json).packages).Count -gt 0
    }
    if (-not $hasPackages -or $action -eq 'sync') {
        Write-Host '[2/3] 公開GitHubから配布物を同期します（初回は数分かかることがあります）'
        $sourceArgs = @('store', 'source', 'set', 'github', [string]$settings.repository, '--store', $storeDir, '--os', 'windows')
        if (@($settings.apps).Count -gt 0) { $sourceArgs += @('--only', ($settings.apps -join ',')) }
        if ($env:APPCAT_SERVER_CATALOG_URL) { $sourceArgs += @('--catalog-url', $env:APPCAT_SERVER_CATALOG_URL) }
        # Only rewrite source settings when they changed, keeping prior sync status on errors.
        $sourcePath = Join-Path $storeDir 'upstream.json'
        $source = if (Test-Path -LiteralPath $sourcePath) { Get-Content -LiteralPath $sourcePath -Raw -Encoding UTF8 | ConvertFrom-Json } else { $null }
        $expectedCatalog = if ($env:APPCAT_SERVER_CATALOG_URL) { $env:APPCAT_SERVER_CATALOG_URL } else { 'https://raw.githubusercontent.com/yahright/downloads/main/appcat/catalog.json' }
        if (-not $source -or $source.repository -ne $settings.repository -or $source.os -ne 'windows' -or $source.catalog_url -ne $expectedCatalog -or (($source.only | Sort-Object) -join ',') -ne (($settings.apps | Sort-Object) -join ',')) {
            Invoke-AppCat -CommandArgs $sourceArgs
        }
        try {
            Invoke-AppCat -CommandArgs @('store', 'sync', '--store', $storeDir)
        } catch {
            $hasPackages = (Test-Path -LiteralPath $catalogPath) -and @((Get-Content -LiteralPath $catalogPath -Raw -Encoding UTF8 | ConvertFrom-Json).packages).Count -gt 0
            if (-not $hasPackages -or $action -eq 'sync') { throw }
            Write-Host "一部の取得に失敗しました。取得済みのアプリを配信します。`n$($_.Exception.Message)" -ForegroundColor Yellow
        }
    } else {
        Write-Host '[2/3] 取得済みの配布物を使います。GitHubへの接続は行いません。'
    }
    if ($action -eq 'sync') {
        Write-Host '配布物を更新しました。起動中のサーバーにも反映されます。' -ForegroundColor Green
    } elseif ($env:APPCAT_SERVER_NO_SERVE -ne '1') {
        Enable-LanAccess $port
        Write-Host '[3/3] 配信を開始します。このウィンドウを開いたままにしてください。' -ForegroundColor Green
        # Avoid WMI/CIM; NetworkInterface also works when those services are unavailable.
        $urls = @("http://localhost:$port")
        foreach ($adapter in [Net.NetworkInformation.NetworkInterface]::GetAllNetworkInterfaces()) {
            if ($adapter.OperationalStatus -ne 'Up' -or $adapter.NetworkInterfaceType -eq 'Loopback') { continue }
            foreach ($address in $adapter.GetIPProperties().UnicastAddresses) {
                if ($address.Address.AddressFamily -eq 'InterNetwork' -and -not $address.Address.ToString().StartsWith('169.254.')) {
                    $urls += "http://$($address.Address):$port"
                }
            }
        }
        Write-Host '受け取るPCのAppCatで「置き場」に設定するURL:'
        foreach ($url in $urls | Select-Object -Unique) { Write-Host "  $url" }
        Write-Host '接続テストは上のURLの末尾に /catalog.json を付けて開いてください。'
        Write-Host "次回の起動: $serverHome\start-server.bat"
        Write-Host "配布物の更新: $serverHome\sync-server.bat"
        Write-Host '停止: Ctrl+C またはこのウィンドウを閉じる'
        Invoke-AppCat -CommandArgs @('store', 'serve', '--store', $storeDir, '--listen', "0.0.0.0:$port")
    }
} catch {
    $exitCode = 1
    Write-Host "`nセットアップ/起動に失敗しました。" -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor Red
    Write-Host '通信エラーの場合はGitHub・raw.githubusercontent.com・api.github.com・配布ファイルの接続許可を確認してください。ログインは不要です。'
    Write-Host 'GitHub API の回数制限（HTTP 403/429）の場合は、時間を置いて sync-server.bat を実行してください。'
    Write-Host "ログ: $logDir"
} finally {
    if ($transcript) { Stop-Transcript | Out-Null }
}
exit $exitCode
