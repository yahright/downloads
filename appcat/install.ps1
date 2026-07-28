& {
$ErrorActionPreference = "Stop"

if (-not $IsWindows -and $PSVersionTable.PSEdition -eq "Core") {
    throw "このインストーラーは Windows 専用です。"
}

$versionUrl = if ($env:APPCAT_VERSION_URL) {
    $env:APPCAT_VERSION_URL
}
else {
    "https://raw.githubusercontent.com/yahright/downloads/main/appcat/version.txt"
}
$installDir = if ($env:APPCAT_INSTALL_DIR) {
    [System.IO.Path]::GetFullPath($env:APPCAT_INSTALL_DIR)
}
else {
    Join-Path $HOME ".myapps\bin"
}

$architecture = [System.Runtime.InteropServices.RuntimeInformation]::OSArchitecture.ToString()
$arch = switch ($architecture) {
    "X64" { "amd64" }
    "Arm64" { "arm64" }
    default { throw "未対応の Windows アーキテクチャです: $architecture" }
}

$version = (Invoke-RestMethod -Uri $versionUrl).ToString().Trim()
if ($version -notmatch '^[0-9]+\.[0-9]+\.[0-9]+$') {
    throw "公開バージョンが不正です: $version"
}

$archiveName = "appcat-$version-windows-$arch.zip"
$releaseBase = if ($env:APPCAT_RELEASE_BASE) {
    $env:APPCAT_RELEASE_BASE.TrimEnd("/")
}
else {
    "https://github.com/yahright/downloads/releases/download/appcat-v$version"
}
$archiveUrl = "$releaseBase/$archiveName"
$checksumUrl = "$archiveUrl.sha256"
$temporaryDir = Join-Path ([System.IO.Path]::GetTempPath()) (
    "appcat-install-" + [guid]::NewGuid().ToString("N")
)

try {
    New-Item -ItemType Directory -Path $temporaryDir | Out-Null
    $archivePath = Join-Path $temporaryDir $archiveName
    $checksumPath = "$archivePath.sha256"
    Invoke-WebRequest -Uri $archiveUrl -OutFile $archivePath -UseBasicParsing
    Invoke-WebRequest -Uri $checksumUrl -OutFile $checksumPath -UseBasicParsing

    $expected = ((Get-Content -LiteralPath $checksumPath -Raw).Trim() -split '\s+')[0].ToLowerInvariant()
    $actual = (Get-FileHash -Algorithm SHA256 -LiteralPath $archivePath).Hash.ToLowerInvariant()
    if ($actual -ne $expected) {
        throw "sha256 が一致しません: expected=$expected actual=$actual"
    }

    $expanded = Join-Path $temporaryDir "expanded"
    Expand-Archive -LiteralPath $archivePath -DestinationPath $expanded
    $source = Join-Path $expanded "appcat.exe"
    if (-not (Test-Path -LiteralPath $source -PathType Leaf)) {
        throw "アーカイブ内に appcat.exe がありません。"
    }

    New-Item -ItemType Directory -Force -Path $installDir | Out-Null
    $target = Join-Path $installDir "appcat.exe"
    $newTarget = "$target.new"
    $oldTarget = "$target.old"
    Copy-Item -LiteralPath $source -Destination $newTarget -Force
    if (Test-Path -LiteralPath $target) {
        Remove-Item -LiteralPath $oldTarget -Force -ErrorAction SilentlyContinue
        Move-Item -LiteralPath $target -Destination $oldTarget -Force
    }
    try {
        Move-Item -LiteralPath $newTarget -Destination $target -Force
    }
    catch {
        if (Test-Path -LiteralPath $oldTarget) {
            Move-Item -LiteralPath $oldTarget -Destination $target -Force
        }
        throw
    }
    Remove-Item -LiteralPath $oldTarget -Force -ErrorAction SilentlyContinue

    if ($env:APPCAT_SKIP_PATH -ne "1") {
        $userPath = [Environment]::GetEnvironmentVariable("Path", "User")
        $entries = @($userPath -split ";" | Where-Object { $_.Trim() })
        $alreadyPresent = $entries | Where-Object {
            [string]::Equals($_.Trim(), $installDir, [System.StringComparison]::OrdinalIgnoreCase)
        }
        if (-not $alreadyPresent) {
            $newPath = if ([string]::IsNullOrWhiteSpace($userPath)) {
                $installDir
            }
            else {
                $userPath.TrimEnd(";") + ";" + $installDir
            }
            [Environment]::SetEnvironmentVariable("Path", $newPath, "User")
        }
    }

    & $target --version
    Write-Host "AppCat をインストールしました: $target" -ForegroundColor Green
    if ($env:APPCAT_SKIP_PATH -ne "1") {
        Write-Host "新しいターミナルを開き、appcat ui を実行してください。"
    }
}
finally {
    if (Test-Path -LiteralPath $temporaryDir) {
        Remove-Item -LiteralPath $temporaryDir -Recurse -Force
    }
}
}
