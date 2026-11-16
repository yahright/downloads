# ScreenPort for Windows

Windows 10 2004 以降 / Windows 11。x64・arm64 の利用者セッションで動作する。
管理者として起動しない。UAC・ログイン画面・昇格済みアプリは操作対象外。

## 導入

ZIP を `C:\Tools\ScreenPort` など書込み可能な固定の場所に展開する。
同梱の `ScreenPortApp.exe` がトレイ常駐、`screenport.exe` が CLI/MCP。
CLI からの初回接続で常駐プロセスが自動起動する。

```powershell
.\screenport.exe doctor
.\screenport.exe mcp
```

Copilot CLI / Claude Code / Cursor は同梱 `mcp-example.json` を参照。
VS Code は `.vscode/mcp.json` の `servers` に同じ command/args を置く。
Codex は MCP サーバーの command を `screenport.exe`、args を `["mcp"]` にする。
パスは実際に展開した絶対パスへ変更する。

## 基本操作

`list_windows` → `ax_tree(window)` → `click(ref)` / `type` / `key` → `wait_for`。
17 個の道具と JSON-RPC/stdio の形式は macOS と共通。
Windows の座標は全画面共通の**物理ピクセル**。負の座標を含む複数画面に対応する。
画像の位置は `desktop = bounds.origin + image_pixel / scale` で求める。
Windows ショートカットは `ctrl+s` / `ctrl+a`、Windows キーは `win`（`cmd` も Windows キー）。

```powershell
.\screenport.exe call list_windows
.\screenport.exe call ax_tree '{"window":"com.yahright.screenport.fixture"}'
```

## 許可と停止

アプリごとの read / click / full を、接続セッションと期限の範囲で承認する。
ブラウザ・システム設定・パスワード管理アプリは read 固定。
IDE・ターミナルは click が既定。`request_access` で人が承認した場合に full へ上げられる。
呼出し元プロセスの祖先と同名のホストアプリは拒否する。
秘密欄は UI Automation の IsPassword で識別し、値を返さず入力も拒否する。

物理マウス・キーボードの入力で既定 2 秒一時停止。操作中は右下に「Esc でキャンセル」。
Esc、Ctrl+Alt+Shift+S、トレイ「すべて停止」で接続済みセッションを取り消す。
取り消した接続は観測も拒否する。人に確認してから接続を作り直す。
画面の縁と AI カーソルは ScreenPort の撮影から除外する。

設定は `%APPDATA%\screenport\config.json`（`SCREENPORT_CONFIG` で変更）。
例: 受入 fixture だけを事前許可する。

```json
{"grants":[{"app":"com.yahright.screenport.fixture","tier":"full"}]}
```

`human_pause_s` / `grant_ttl_min` / `approval_timeout_s` / `max_ops_per_second` /
`max_ops_per_session` / `tiers` / `unattended` / `log_dir` も利用できる。
監査は `%LOCALAPPDATA%\screenport\logs\YYYY-MM-DD.jsonl`。
画像データと入力文字列は監査に保存しない。

## リモート

Mac と同じ TLS 1.2 PSK、暗号スイート `PSK-AES128-GCM-SHA256` とペアリング形式。
既定は無効。待受は Tailscale IPv4 1 個のみに固定する。

```powershell
# 操作される側
.\screenport.exe remote enable
# 操作する側（表示された文字列は秘密情報として扱う）
.\screenport.exe remote add target 'screenport-pair:...'
.\screenport.exe doctor --remote target
.\screenport.exe mcp --remote target
```

`remote pair [label]` / `revoke KEY_ID` / `disable` / `status` / `list` / `remove NAME`。
`remote enable --bind 127.0.0.1 --port 47800` で折り返し試験もできる。
必要な通信経路は利用者のネットワーク方針に従って用意する（Firewall を自動変更しない）。
`remote.json` と `remotes.json` は利用者だけにアクセス権を付けて保存する。
リモートには `unattended` を適用せず、事前許可したアプリ以外は操作される側の人が承認する。

## 開発

Visual Studio 2022 C++（x64/arm64）、CMake、vcpkg OpenSSL static が必要。

```powershell
vcpkg install openssl:x64-windows-static openssl:arm64-windows-static
.\build-windows-release.ps1
```

TaCM は不要。JSON は nlohmann/json、リモート暗号化は OpenSSL を静的リンクする。
それぞれのライセンスを ZIP に同梱する。
