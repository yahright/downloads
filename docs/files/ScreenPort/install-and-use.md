# ScreenPort インストールと操作の説明書

対象: Windows 0.1.1修正版。macOSは既にScreenPortを導入している場合のCLIとリモート接続も扱います。

ScreenPortは、AIやスクリプトからデスクトップの画面を調べ、許可したアプリを操作するツールです。使い方は2通りあります。

- **MCP接続**: GitHub Copilotなどに登録し、会話から操作する。
- **CLI**: `screenport call` をターミナルやスクリプトから実行する。AI側のMCP対応は不要で、外部コマンドを実行できれば利用できる。

Windows 0.1.1では、対象アプリを事前許可すれば、CLIだけで観測・クリック・日本語入力・キー送信・画像取得を行えます。`call`ごとにセッションが変わるため、事前許可と座標の扱いは「CLIのセッションと許可」を参照してください。旧公開版0.1.0には単発入力の不具合があるため、このCLI手順には0.1.1を使います。

## Windowsに導入する

### ダウンロードして展開する

1. 修正版0.1.1のZIPを入手する。このチャットで渡された修正版ZIP、またはソースから `build-windows-release.ps1` で作った `dist/windows` のZIPを使う。[既存の公開配布ページ](https://github.com/yahright/downloads/releases/tag/screenport-v0.1.0)の0.1.0には今回のCLI修正が含まれていない。
2. Intel／AMDのWindowsには `ScreenPort-0.1.1-win-x64.zip`、Windows on ARMには `ScreenPort-0.1.1-win-arm64.zip` を使う。MACMINIWINはarm64版。
3. ZIPを `C:\tools\ScreenPort` など、今後も使う書込み可能な場所へ展開する。EXEだけを抜き出さず、同梱ファイルをまとめて置く。

Windows 10 2004以降／Windows 11の、ログイン中の利用者セッションで使います。現在のWindows配布物は未署名のBeta版です。

主なファイルは次のとおりです。

- `ScreenPortApp.exe`: トレイに常駐し、画面取得と入力を担当する。
- `screenport.exe`: MCP接続とCLI呼出しの入口。
- `ScreenPortFixture.exe`: 操作確認専用のテストアプリ。
- `mcp-example.json`: MCP設定のひな形。実際の展開先に合わせてパスを変更する。

### 起動を確認する

通常のPowerShellで実行します。管理者として起動しないでください。

```powershell
C:\tools\ScreenPort\screenport.exe version
C:\tools\ScreenPort\screenport.exe doctor
```

初回接続で常駐アプリが自動起動します。`doctor` の `host_name` が操作するWindowsの名前で、`permissions.screen` と `permissions.accessibility` が `true` なら基本準備は完了です。

更新時はトレイメニューからScreenPortを終了し、テストアプリも閉じてから同じフォルダーのファイルを入れ替えます。`version`と`doctor`の両方で0.1.1になったことを確認します。既存の設定・リモート鍵・監査ログはそのまま使えます。

同じPC内で使う場合、Tailscale・TaCM・リモート待受・FWの受信規則追加は不要です。画面はログイン済みでロックが解除されている必要があります。UAC・ログイン画面・管理者として起動したアプリは対象外です。

## GitHub Copilotから使う

### Copilot CLIに登録する

Copilot CLIにログイン済みのWindowsで、次を実行します。

```powershell
copilot mcp add screenport -- C:\tools\ScreenPort\screenport.exe mcp
copilot
```

Copilot内で `/mcp` を開き、`screenport` の接続とツール一覧を確認します。サーバー起動やツール使用の確認が表示されたら、内容を確認して承認します。

登録コマンドは[GitHub公式のMCP追加手順](https://docs.github.com/en/copilot/how-tos/copilot-cli/customize-copilot/add-mcp-servers)に対応しています。`copilot mcp add` がない旧版では、Copilot内の `/mcp add` でstdioを選び、コマンドに `C:\tools\ScreenPort\screenport.exe mcp` を指定します。

### VS CodeのCopilotに登録する

1. Windows上のVS Codeで作業フォルダーを開く。
2. `Ctrl+Shift+P` → **MCP: Add Server** を実行する。
3. **Command（stdio）** を選び、`C:\tools\ScreenPort\screenport.exe mcp` を指定する。
4. サーバー名を `screenport` にする。
5. ユーザー用の保存先を選ぶ。新しいCopilotの構成では **Global → Copilot Global** を選ぶ。
6. CopilotのAgentとしてツールを使えるチャットを開き、ScreenPortのツールを有効にする。

新しいCopilotの設定ファイルは `%USERPROFILE%\.copilot\mcp-config.json` で、最上位が `mcpServers` です。既存ファイルがあれば、ほかのサーバーを残して `screenport` の項目だけ追加します。

```json
{
  "mcpServers": {
    "screenport": {
      "type": "stdio",
      "command": "C:\\tools\\ScreenPort\\screenport.exe",
      "args": ["mcp"],
      "tools": ["*"]
    }
  }
}
```

旧来のVS Code agent modeでは `.vscode/mcp.json` の最上位が `servers` です。新しいCopilot用の `mcpServers` 形式と混ぜないでください。現在の保存先とGUI手順は[VS Code公式説明](https://code.visualstudio.com/docs/agent-customization/mcp-servers)と[設定リファレンス](https://code.visualstudio.com/docs/agents/reference/mcp-configuration)を参照してください。

### 最初の操作を試す

Copilotに次を送ります。リモートのサーバー名を使う場合は、先頭の名前も変更してください。

```text
screenportのMCPツールを使って操作してください。
まずstatusで接続先のhost_nameを確認してください。
open_appでcom.yahright.screenport.fixtureを開き、
名前欄を「Copilotからの日本語テスト」に置き換え、
カウントをちょうど3回押し、保存してください。
保存後の表示とスクリーンショットを確認してください。
```

テストアプリへの許可画面が出たら、そのアプリに `full` を許可します。すでにテストアプリだけを事前許可している環境では、この確認は省略されます。

成功すると「保存しました: Copilotからの日本語テスト / クリック数: 3」と表示されます。毎回3に揃えたい場合は、前回のテストアプリを閉じてから始めます。

## MCPを使わずCLIで操作する

### 基本形

```text
screenport call 操作名 JSON引数
```

コマンドラインから常駐アプリに1回の操作を依頼します。AIにMCPサーバーを登録する必要はありません。利用するAIには、ターミナルやシェルで外部コマンドを実行する機能が必要です。

引数なしの観測は、そのまま実行できます。

```powershell
$sp = 'C:\tools\ScreenPort\screenport.exe'
& $sp call status
& $sp call list_apps
& $sp call list_windows
```

Windows版の出力はJSONです。実際の結果は `structuredContent`、失敗の有無は `isError` を調べます。成功時の終了コードは0、失敗時は非0です。`wait_for` は呼出し自体が成功しても条件が成立しない場合があるため、`structuredContent.met` も確認します。

```powershell
$result = & $sp call status | ConvertFrom-Json
$result.structuredContent.host_name
```

### Windows PowerShellでJSONを渡す

Windows標準のPowerShell 5.1では、通常のJSON文字列をそのままEXEへ渡すと、引用符が失われることがあります。固定の引数は `--%` を使い、JSON全体を二重引用符で囲み、その中の二重引用符を `\"` にします。

```powershell
& $sp --% call open_app "{\"name\":\"com.yahright.screenport.fixture\"}"
& $sp --% call ax_tree "{\"window\":\"com.yahright.screenport.fixture\"}"
& $sp --% call find "{\"window\":\"com.yahright.screenport.fixture\",\"query\":\"保存\"}"
```

0.1.1では、対象アプリをfullで事前許可し、名前欄に入力フォーカスがある状態で、次の入力も単発CLIから行えます。

```powershell
& $sp --% call type "{\"text\":\"CLIからの日本語テスト\"}"
& $sp --% call key "{\"combo\":\"ctrl+s\"}"
```

`--%` より後ではPowerShellの変数やパイプは展開されません。値を組み立てるスクリプトでは、下のPython例のように引数配列で起動すると引用符の問題を避けられます。

### CLIのセッションと許可

`call` は1回ごとに新しいセッションになります。

- `ax_tree` や `find` が返す `ref_1` などは、そのセッション内だけの参照です。別の `call click` に渡すと `stale_ref` になります。
- 単発CLIでは `find` の `matches[].bounds` から現在の位置を取り、`xy` でクリックします。位置が変わる前に操作し、必要なら取り直してください。
- 承認画面で与えた許可も次の `call` に引き継がれません。連続操作をする場合は、対象アプリに限って設定ファイルの `grants` に事前許可します。
- Windows 0.1.1の単発 `type`／`key` は、前面アプリに設定された明示的な `full` の事前許可を使います。`read`／`click`、別アプリの許可、`unattended: true`だけでは入力できません。入力先は `focus` と座標クリックで先に指定します。
- 前面・実際の入力先・秘密欄・アプリ種別・停止状態の確認は、MCP接続と同様に行われます。事前許可があっても、ブラウザやシステム設定、呼出し元の宿主アプリなどの制限は解除されません。

Windowsの設定先は `%APPDATA%\screenport\config.json` です。以下はテストアプリだけを許可する例です。既存設定がある場合は全文を上書きせず、その内容を残して追加します。

```json
{
  "grants": [
    {"app": "com.yahright.screenport.fixture", "tier": "full"}
  ]
}
```

### WindowsのCLIで入力と保存を試す

次はPython 3からWindows版CLIを呼ぶ例です。MCPクライアントのライブラリやMCP設定は使いません。上のテストアプリ限定の事前許可がある状態で実行します。

この例はテストアプリを開き、名前を入力し、カウントを3回押して保存し、その窓の画像を `screenport-fixture.png` に保存します。クリック数をちょうど3にする場合は、前回のテストアプリを閉じてから実行します。実際のポインターが動くため、実行中はマウスやキーボードを操作せず待ちます。

```python
import base64
import json
import subprocess
import time
from pathlib import Path

sp = r"C:\tools\ScreenPort\screenport.exe"
fixture = "com.yahright.screenport.fixture"

def call(tool, **args):
    for _ in range(12):
        p = subprocess.run(
            [sp, "call", tool, json.dumps(args, ensure_ascii=False)],
            capture_output=True, text=True, encoding="utf-8", timeout=120,
        )
        r = json.loads(p.stdout)
        if r.get("structuredContent", {}).get("error") == "paused_by_human":
            time.sleep(2.2)
            continue
        if p.returncode or r.get("isError"):
            raise RuntimeError(r.get("structuredContent", r))
        return r
    raise RuntimeError("人の入力が続いているため操作を中止しました")

call("open_app", name=fixture)
call("focus", app=fixture)
tree = call("ax_tree", window=fixture)["structuredContent"]
matches = call("find", window=fixture, query="保存")["structuredContent"]["matches"]
button = next(m for m in matches if m["role"] == "button" and m["name"] == "保存")
b = button["bounds"]
save_xy = [b["x"] + b["w"] / 2, b["y"] + b["h"] / 2]

def click_control(role, name):
    matches = call("find", window=fixture, query=name)["structuredContent"]["matches"]
    m = next(m for m in matches if m["role"] == role and m["name"] == name)
    b = m["bounds"]
    call("click", xy=[b["x"] + b["w"] / 2, b["y"] + b["h"] / 2])

click_control("text_field", "名前")
call("key", combo="ctrl+a")
call("type", text="CLIからの日本語テスト 🙂")
for _ in range(3):
    click_control("button", "カウント")
call("click", xy=save_xy)
result = call("wait_for", cond={"type": "text_appears", "window": fixture,
                               "text": "保存しました: CLIからの日本語テスト"}, timeout_ms=3000)
assert result["structuredContent"]["met"], "保存結果を確認できませんでした"

shot = call("screenshot", target="window:" + str(tree["window_id"]), scale=0.5)
image = next(c for c in shot["content"] if c["type"] == "image")
dest = Path("screenport-fixture.png")
dest.write_bytes(base64.b64decode(image["data"]))
print(dest.resolve())
```

Windows版CLIには、現状 `--json` と `--out` の専用オプションはありません。画像は上のように、返された `content` の画像データをBase64から復元します。AIに画像も見せたい場合は、生成したPNGをそのAIの画像読込み機能で開きます。

### macOS版CLIの補足

macOS版では `--json` で構造化結果だけを出力し、`--out` で画像を保存できます。次の `window:1234` は `list_windows` や `ax_tree` で取得した現在の窓IDへ置き換えます。

```bash
SP="$HOME/Applications/ScreenPort.app/Contents/MacOS/screenport"
"$SP" call list_windows --json
"$SP" call screenshot '{"target":"window:1234"}' --out shot.png
```

macOS版の単発 `type`／`key` は、操作先アプリの事前許可と前面・入力フォーカスを確認して使う実装です。Windowsと同様、別の `call` のrefと対話承認は引き継がれません。

## 別の端末を操作する

### Windows側で待受を有効にする

操作される側のWindowsで、ScreenPortとTailscaleを起動して実行します。

```powershell
C:\tools\ScreenPort\screenport.exe remote enable
```

表示された `screenport-pair:…` は接続用の秘密鍵です。操作する端末へ安全に移し、公開する説明書・リポジトリ・チャットには貼り付けないでください。既存の鍵と分けて端末ごとに発行する場合は `remote pair <ラベル>` を使います。

操作する側にもScreenPortを用意し、その端末のCLIで登録します。

```text
screenport remote add macminiwin 'screenport-pair:…'
screenport doctor --remote macminiwin
```

シェルに合わせて引用符を使います。macOSのzshでは上の単一引用符をそのまま使えます。接続確認では、表示された `host_name` または `on <端末名>` が操作される側の端末であることを確認します。

Tailscale上のTCP 47800番へ到達できる必要があります。接続が失敗したら、待受アドレス・Tailscale・FWの順に確認します。FWの変更が必要な場合は、ScreenPortのプログラムと接続元を限定した受信許可を使います。MACMINIWINへの今回の接続では、FW変更は不要でした。

### CopilotとCLIの接続先を指定する

Copilotには、ローカル用と区別した名前で登録します。`/path/to/screenport` は操作元にある実際のCLIの絶対パスに置き換えます。

```bash
copilot mcp add screenport-macminiwin -- /path/to/screenport mcp --remote macminiwin
```

MCPを使わないCLIでも `--remote` を追加できます。

```text
screenport call status --remote macminiwin
screenport call list_windows --remote macminiwin
```

遠隔のWindowsを操作する場合も、文字入力・キー送信などの動作はWindows側の実装に従います。Windows側を0.1.1へ更新し、対象アプリをfullで事前許可すれば、リモートの単発CLIからも入力できます。Mac側のCLIを更新するだけでは、旧Windows 0.1.0の不具合は直りません。

### このMac miniからMACMINIWINを操作する場合

接続名 `macminiwin` は登録済みです。Mac miniでは既存アプリに入っているCLIが古いため、今回確認した開発ビルドを使えます。

```bash
SP=/Users/nz/repo/screenport/.build/debug/screenport
"$SP" doctor --remote macminiwin
copilot mcp add screenport-macminiwin -- "$SP" mcp --remote macminiwin
"$SP" call list_windows --json --remote macminiwin
```

このパスはこのMac miniの開発環境用です。ほかの端末では、その端末に導入したCLIを指定します。macOSアプリの導入手順は[リポジトリのREADME](https://github.com/yahright/screenport/blob/main/README.md)を参照してください。

## 困ったときと停止方法

- **`not_approved`**: 操作先に表示された許可画面で承認する。単発CLIの連続操作では、対象を限定して設定の `grants` を使う。
- **Windowsの単発 `type`／`key` が `not_target`**: 操作される側の常駐アプリが0.1.1か、前面アプリに明示的なfull事前許可があるかを確認する。別の `call focus` の許可だけでは足りない。
- **`stale_ref`**: 別セッションのrefを使っていないか確認する。単発CLIでは最新のboundsから座標を求める。
- **`paused_by_human`**: マウスやキーボードを止めて、2秒以上待ってから再試行する。
- **JSONのparse error**: PowerShell 5.1では `--%` を使うか、Pythonの引数配列で起動する。
- **`keyboard_focus_elsewhere`／`obscured`**: 許可画面や別のダイアログが前に出ていないか、操作先で確認する。
- **`secure_field`**: パスワード欄への入力は拒否される。本人が入力する。
- **`tier_capped`／`host_app_denied`**: アプリの種類による制限、またはAIを動かしている宿主アプリへの操作拒否。通常アプリ向けの事前許可では解除できない。
- **`window_not_found`**: アプリが閉じられた、または窓IDが変わった。`list_windows`／`ax_tree` で取り直す。

アプリへの許可段は `read`（観測）、`click`（左クリック・スクロール）、`full`（文字・キー・ドラッグ）です。ブラウザ・システム設定・パスワード管理はread固定です。

操作を止めるには、WindowsではEsc、`Ctrl+Alt+Shift+S`、またはScreenPortのトレイメニューの「すべて停止」を使います。取り消されたセッションを再利用せず、人が再開を認めてから接続し直します。常駐自体を終える場合はトレイメニューの「終了」を選びます。

監査ログは `%LOCALAPPDATA%\screenport\logs` にあります。リモート待受を止めるには `screenport remote disable`、特定の鍵を取り消すには `screenport remote revoke <鍵ID>` を使います。

---

Copilot CLIのWindows操作とMac→Windowsの接続は受入済みです。VS Codeの設定手順は公式資料に基づきますが、このWindowsでのVS Code経由の実操作は未確認です。物理Escでの停止確認も残っています。
