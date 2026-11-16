& {
$ErrorActionPreference = "Stop"

function Set-AppCatShortcutAppId([string]$Path, [string]$AppId) {
    if (-not ("AppCatShortcutProperties" -as [type])) {
        Add-Type -TypeDefinition @'
using System;
using System.Runtime.InteropServices;
public static class AppCatShortcutProperties {
    [StructLayout(LayoutKind.Sequential, Pack=4)]
    public struct Key { public Guid Format; public uint Id; }
    [StructLayout(LayoutKind.Explicit, Size=24)]
    public struct Value { [FieldOffset(0)] public ushort Type; [FieldOffset(8)] public IntPtr Text; }
    [ComImport, Guid("886D8EEB-8CF2-4446-8D02-CDBA1DBDCF99"), InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
    public interface Store {
        [PreserveSig] int GetCount(out uint count);
        [PreserveSig] int GetAt(uint index, out Key key);
        [PreserveSig] int GetValue(ref Key key, out Value value);
        [PreserveSig] int SetValue(ref Key key, ref Value value);
        [PreserveSig] int Commit();
    }
    [DllImport("shell32.dll", CharSet=CharSet.Unicode, PreserveSig=false)]
    static extern void SHGetPropertyStoreFromParsingName(string path, IntPtr bind, uint flags, ref Guid id, out Store store);
    public static void Set(string path, string appId) {
        Guid id = typeof(Store).GUID;
        Store store;
        SHGetPropertyStoreFromParsingName(path, IntPtr.Zero, 2, ref id, out store);
        var key = new Key { Format = new Guid("9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3"), Id = 5 };
        var value = new Value { Type = 31, Text = Marshal.StringToCoTaskMemUni(appId) };
        try {
            Marshal.ThrowExceptionForHR(store.SetValue(ref key, ref value));
            Marshal.ThrowExceptionForHR(store.Commit());
        } finally {
            Marshal.FreeCoTaskMem(value.Text);
            Marshal.FinalReleaseComObject(store);
        }
    }
}
'@
    }
    [AppCatShortcutProperties]::Set([IO.Path]::GetFullPath($Path), $AppId)
}

if (-not $IsWindows -and $PSVersionTable.PSEdition -eq "Core") {
    throw "このインストーラーは Windows 専用です。"
}

$versionUrl = if ($env:APPCAT_VERSION_URL) {
    $env:APPCAT_VERSION_URL
}
else {
    "https://raw.githubusercontent.com/yahright/downloads/main/appcat/version-windows.txt"
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

    # クリックで画面が開くランチャー。macOS の AppCat.app と対になるもの。
    # 本体と同じフォルダに置く（ランチャーは隣の appcat.exe を探す）。
    $launcherSource = Join-Path $expanded "appcat-ui.exe"
    $launcherTarget = Join-Path $installDir "appcat-ui.exe"
    if (Test-Path -LiteralPath $launcherSource -PathType Leaf) {
        $newLauncher = "$launcherTarget.new"
        Copy-Item -LiteralPath $launcherSource -Destination $newLauncher -Force
        Move-Item -LiteralPath $newLauncher -Destination $launcherTarget -Force
    }
    else {
        $launcherTarget = $null
    }

    if ($launcherTarget -and $env:APPCAT_SKIP_SHORTCUT -ne "1") {
        $programs = Join-Path $env:APPDATA "Microsoft\Windows\Start Menu\Programs"
        New-Item -ItemType Directory -Force -Path $programs | Out-Null
        $shortcutPath = Join-Path $programs "AppCat.lnk"
        $shell = New-Object -ComObject WScript.Shell
        $shortcut = $shell.CreateShortcut($shortcutPath)
        $shortcut.TargetPath = $launcherTarget
        $shortcut.WorkingDirectory = $installDir
        $shortcut.Description = "AppCat の画面を開く"
        $shortcut.Save()
        Set-AppCatShortcutAppId -Path $shortcutPath -AppId "com.yahright.appcat"
        # Register the toast sender and the activation URI for this user.
        $appIdKey = "HKCU:\Software\Classes\AppUserModelId\com.yahright.appcat"
        New-Item -Path $appIdKey -Force | Out-Null
        New-ItemProperty -Path $appIdKey -Name "DisplayName" -Value "AppCat" -PropertyType String -Force | Out-Null
        New-ItemProperty -Path $appIdKey -Name "IconUri" -Value $launcherTarget -PropertyType String -Force | Out-Null
        $protocolKey = "HKCU:\Software\Classes\appcat"
        New-Item -Path "$protocolKey\shell\open\command" -Force | Out-Null
        Set-Item -Path $protocolKey -Value "URL:AppCat"
        New-ItemProperty -Path $protocolKey -Name "URL Protocol" -Value "" -PropertyType String -Force | Out-Null
        Set-Item -Path "$protocolKey\shell\open\command" -Value ('"' + $launcherTarget + '" "%1"')
        Write-Host "スタートメニューに登録しました: $shortcutPath"
    }

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
    if ($launcherTarget) {
        Write-Host "スタートメニューの AppCat を開くと、画面が既定のブラウザで開きます。"
    }
    if ($env:APPCAT_SKIP_PATH -ne "1") {
        Write-Host "ターミナルから使う場合は、新しいターミナルで appcat ui を実行してください。"
    }
}
finally {
    if (Test-Path -LiteralPath $temporaryDir) {
        Remove-Item -LiteralPath $temporaryDir -Recurse -Force
    }
}
}
