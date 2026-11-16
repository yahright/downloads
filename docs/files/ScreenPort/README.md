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
Firewall は勝手に変更しない。許可ルールは人が設定画面か `firewall allow` で明示的に作る（UAC で管理者の承認が要る）。
`remote.json` と `remotes.json` は利用者だけにアクセス権を付けて保存する。
リモートには `unattended` を適用せず、事前許可したアプリ以外は操作される側の人が承認する。

## 設定画面（VM 間で使うときの初期設定）

トレイのメニュー「設定…」か `screenport.exe setup` で開く。
VM の中に入れて、別の VM の AI から操作する用途を想定している。

操作される側（ScreenPort を入れた VM）は「この PC を操作させる」タブ:

1. 「この PC をリモートから操作できるようにする」をオンにする。
2. 待受アドレスを選ぶ。Tailscale が無い VM は「アダプター『…』に追従」を選ぶと、DHCP で IP が変わっても同じアダプターで待ち受ける。
3. 「接続を許す相手」を決める（既定は Tailscale なら `100.64.0.0/10`、それ以外は `LocalSubnet`）。特定の VM だけなら、その IP を書く。
4. 「保存して適用」。初回は鍵を 1 つ作り、ペアリング文字列を表示する。
5. 「ファイアウォールで許可する（管理者）」。TCP の待受ポートを `ScreenPortApp.exe` に限って許可する受信ルール `ScreenPort Remote` を作る。
   Windows の「アクセスを許可しますか」を閉じたときに自動で作られた ScreenPortApp のブロックルールも、ここで消す（ブロックが許可より優先されるため）。
6. 「コピー」で文字列を写し、操作する側へ渡す。操作する側ごとに「新しい鍵を発行」し、要らなくなったら「取り消し」。

操作する側（AI を動かす VM）は「他の PC を操作する」タブで、名前とペアリング文字列を「登録」→「接続テスト」→「MCP 設定をコピー」。
コピーされる JSON を AI クライアントの `mcpServers` に貼る。

「全般」タブ: サインイン時の自動起動、人が触ったら止める秒数、承認なしで操作できるアプリ（`grants`）。
リモートには `unattended` が効かないため、無人で操作させるアプリはここで事前許可する。

同じことは CLI でもできる:

```powershell
.\screenport.exe remote enable --bind "adapter:イーサネット"
.\screenport.exe firewall allow --from LocalSubnet   # UAC が出る
.\screenport.exe firewall status
.\screenport.exe autostart on
```

## 開発

Visual Studio 2022 C++（x64/arm64）、CMake、vcpkg OpenSSL static が必要。

```powershell
vcpkg install openssl:x64-windows-static openssl:arm64-windows-static
.\build-windows-release.ps1
```

TaCM は不要。JSON は nlohmann/json、リモート暗号化は OpenSSL を静的リンクする。
それぞれのライセンスを ZIP に同梱する。
