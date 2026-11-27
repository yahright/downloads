# ScreenPort for Windows 説明書（0.2.3 Beta）

ScreenPort は、AI（Claude Code / GitHub Copilot / Codex / Cursor など）に Windows の画面を「見る・操作する」道具を渡すソフトです。
AI からは MCP サーバーとして使います。

いちばん想定している使い方は、**VM に ScreenPort を入れて、別の VM（または別の PC）で動く AI から操作する** ことです。
この説明書では、操作される側を **B**、AI が動く側を **A** と呼びます。

> 未署名の Beta 版です。管理者として起動しないでください。UAC の画面・ログイン画面・管理者で動いているアプリは操作できません。

---

## 1. 入れる（A・B 両方）

1. ZIP を `C:\Tools\ScreenPort` など、書き込みできる固定の場所に展開します。
   - arm64 の Windows（Parallels on Apple シリコンなど）は `win-arm64`、それ以外は `win-x64` を使います。
   - 「Windows によって PC が保護されました」と出たら「詳細情報」→「実行」を選びます。
2. `ScreenPortApp.exe` を起動します。通知領域（タスクバー右下）に ScreenPort のアイコンが出ます。
3. アイコンをクリック →「設定…」で設定画面が開きます。
   コマンドからなら `C:\Tools\ScreenPort\screenport.exe setup` でも開けます。
4. 「全般」タブの「Windows へのサインイン時に ScreenPort を起動する」をオンにしておくと、VM の再起動後も自動で待ち受けます。

ZIP の中身:

| ファイル | 役割 |
|---|---|
| `ScreenPortApp.exe` | 常駐アプリ（トレイ）。設定画面もここから開く |
| `screenport.exe` | AI から呼ばれる MCP サーバー兼コマンド |
| `ScreenPortFixture.exe` | 動作確認用の使い捨てアプリ |
| `MANUAL.md` | この説明書 |
| `README.md` | 技術的な詳細（ツール一覧・設定項目・CLI） |
| `mcp-example.json` | AI に登録するときの設定例 |

---

## 2. 操作される側（B）の設定

設定画面の「**この PC を操作させる**」タブで行います。

1. 「この PC をリモートから操作できるようにする」にチェックを入れます。
2. **待受アドレス** を選びます。
   - Tailscale を使っている → 「Tailscale（自動）」
   - VM どうしを LAN / 仮想スイッチでつないでいる → 「アダプター『イーサネット』に追従」
     （DHCP で IP が変わっても、同じアダプターで待ち受け続けます）
   - IP を固定している → 「固定 IP …」
3. **接続を許す相手** を決めます。
   - 既定: Tailscale なら `100.64.0.0/10`、それ以外は `LocalSubnet`（同じネットワークの機械だけ）
   - A の IP が決まっているなら、その IP（例 `192.168.0.20`）だけにするとより安全です。
4. 「**保存して適用**」を押します。状態が「待受中 192.168.x.x:47800」になれば OK。
   初回は鍵が 1 つ作られ、下の欄に `screenport-pair:…` という文字列が出ます。
5. 「**ファイアウォールで許可する（管理者）**」を押し、UAC で「はい」を選びます。
   - 待受ポートを `ScreenPortApp.exe` だけに開ける受信ルール「ScreenPort Remote」を作ります。
   - 以前 Windows の「アクセスを許可しますか？」を閉じてしまっていた場合にできるブロックルールも、ここで自動的に消します。
   - 画面の表示が「許可ルール: TCP 47800 / 接続元 …」になれば OK。
6. 「**コピー**」でペアリング文字列をコピーし、A に渡します。

> ペアリング文字列は **パスワードと同じ** です。チャットや共有フォルダーに残さないでください。
> A が複数あるときは、A ごとに「新しい鍵を発行」します。使わなくなった鍵は「取り消し」で無効になり、その鍵で接続中の相手も切れます。

### 無人で操作させたいとき（B）

操作される側 B の「設定」→「全般」→「リモート操作の許可」で選び、「保存」を押します。

- **アプリごとに許可（既定）**。事前許可したアプリは承認画面を省略できます。「承認なしで操作できるアプリ」に対象を追加し、`read`（観察）、`click`（クリック・スクロール）、`full`（文字入力・キー操作も）を選びます。
- **すべて許可**。ペアリング済みの接続は、アプリ操作とウィンドウ・画面全体・範囲の撮影を承認画面なしで実行できます。ブラウザやシステム設定の操作上限、パスワード欄への入力制限は従来どおり適用されます。

変更は接続中でも次の操作から有効です。「アプリごとに許可」に戻すと、「すべて許可」で自動付与された許可は取り消されます。

---

### VirtualBox ホストの画面取得を使う（任意）

ScreenPort 0.2.3 Beta を Windows のホストとゲストで使います。ゲスト内の ScreenPort で画面全体が真っ黒になる場合は、同じ VM を VirtualBox ホストの PowerShell から撮影し、画像が表示されるか確認します。ホストで `VBoxManage.exe` が PATH にない場合は、インストール先の絶対パスを使います。

```powershell
VBoxManage.exe list runningvms
VBoxManage.exe controlvm "<VM UUID>" screenshotpng .\vbox-test.png
```

1. ホスト側で ScreenPort ビルドの `screenport-vbox.exe` を使います。VirtualBox を実行しているユーザーで、ホストオンリーアダプターの IPv4 を使って次を実行します。ポートの既定は `47801` です。
   ```powershell
   .\screenport-vbox.exe setup "<VM UUID>" "<ホストの IPv4>" 47801
   .\screenport-vbox.exe serve
   ```
   VBoxManage が標準のインストール先にない場合は、ポートの後に `VBoxManage.exe` の絶対パスを渡します。ホストのファイアウォールで必要な場合は、このヘルパーの TCP ポートをゲストが使うホストオンリーネットワークから許可します。
2. ホストの `setup` が表示する `screenport-vbox-pair:…` を、**ゲスト**の「設定」→「全般」→「ホストのペアリング文字列」に入れます。文字列の再表示はホストで `.\screenport-vbox.exe pairing` を実行します。通常のリモート用の鍵とは別に管理します。
3. 「VirtualBox の画面取得を使う」にチェックを付けて保存します。操作元は既存の ScreenPort の接続先とコマンドを使います。

ホスト補助は指定した VM を1台だけ撮ります。単一モニターの VM で、全画面撮影の結果に `capture_backend: virtualbox` が返ります。ホストに表示される画像には ScreenPort のオーバーレイが映る場合があります。ウィンドウ・範囲撮影と入力はゲスト内で処理します。複数モニターではゲスト内の撮影を使います。通常の撮影許可、停止、ゲストのセキュアデスクトップの判定が適用されます。ホストにつながらない場合はホストで `serve` の状態を確認します。ゲスト内の撮影へ戻すにはチェックを外して保存します。

---

## 3. AI が動く側（A）の設定

設定画面の「**他の PC を操作する**」タブで行います。

1. 「名前」に B の呼び名（例 `vm-b`。英数字のみ）を入れます。
2. 「ペアリング文字列」に B でコピーした `screenport-pair:…` を貼り、「**登録**」を押します。
3. 一覧から選んで「**接続テスト**」を押し、「接続成功」と出ることを確かめます。
4. 「**MCP 設定をコピー**」を押すと、AI に登録する設定がクリップボードに入ります。例:

```json
{
  "mcpServers": {
    "screenport-vm-b": {
      "command": "C:\\Tools\\ScreenPort\\screenport.exe",
      "args": ["mcp", "--remote", "vm-b"]
    }
  }
}
```

5. これを AI クライアントの設定に貼ります。
   - Claude Code / Copilot CLI / Cursor: 各クライアントの MCP 設定（`mcpServers`）
   - VS Code: `.vscode/mcp.json` の `servers` に同じ `command` / `args`
   - Codex: MCP サーバーの command に `screenport.exe`、args に `["mcp","--remote","vm-b"]`

A 自身の画面を操作させたいときは、`args` を `["mcp"]` にしたもの（`mcp-example.json`）を、別の名前で登録します。

---

## 4. 使ってみる

AI に次のように頼みます。

- 「screenport-vm-b で開いているウィンドウを一覧して」
- 「vm-b のメモ帳に『こんにちは』と入力して保存して」

AI はおおむね「ウィンドウ一覧 → 要素の木を見る → クリック・入力 → 結果を待って確認」の順に操作します。
画面写真は配置を確認したいときだけ取ります。

---

## 5. 安全のしくみ（B 側の人ができること）

- AI が操作している間、画面の右下に「**Esc でキャンセル**」と出ます。**Esc** を押すと、そのとき接続している AI 全部の許可を取り消します。
  - **Ctrl+Alt+Shift+S** やトレイの「すべて停止」も同じです。
  - 取り消された AI は何もできなくなります。続けるには AI 側で接続し直します。
- 人がマウスやキーボードに触ると、AI の操作は 2 秒止まります（「全般」で秒数を変えられます）。
- パスワード欄の中身は AI に返さず、入力もさせません。
- リモートからの承認ダイアログには「⇄ リモート <A の名前>」と表示されます。
- すべての操作は `%LOCALAPPDATA%\screenport\logs` に記録されます（画像と入力文字は保存しません）。「全般」→「監査ログを開く」で開けます。

---

## 6. うまくいかないとき

| 症状 | 確認すること |
|---|---|
| A の「接続テスト」が `cannot connect` | B で待受が「待受中」か。B の「ファイアウォールで許可する」を済ませたか。「接続を許す相手」に A の IP が入っているか。A から B の IP に届くか（`Test-NetConnection <BのIP> -Port 47800`） |
| `authentication_failed` | 鍵が B で取り消されていないか。B で鍵を発行し直し、A で同じ名前で登録し直す |
| B の状態が「待受できていません」 | 選んだアダプターに IPv4 があるか。Tailscale が起動しているか。別の待受アドレスを選ぶ |
| B の IP が変わって繋がらない | 「アダプターに追従」なら B は待ち受け続けます。ペアリング文字列には IP が入っているため、B で「文字列を表示」→ A で同じ名前で登録し直します |
| ファイアウォールの欄に「ブロックするルール」が出る | 「ファイアウォールで許可する」を押すと消えます |
| VirtualBox などで撮影画像が真っ黒 | 撮影結果の `capture_backend` と `black_frame` を確認する。画面・範囲では GDI、ウィンドウでは WGC のソフトウェアデバイスを代替手段として試す。画像が実際に真っ黒な場合も `black_frame` は `true` になる |
| 操作が `not_target` / 承認待ちで止まる | B の画面で承認する。無人なら対象アプリを事前許可するか、「リモート操作の許可」で「すべて許可」を選ぶ |
| すぐ `cancelled_by_user` になる | B で Esc などが押された。AI 側で接続し直す |

コマンドで確認・設定することもできます（B で実行）:

```powershell
cd C:\Tools\ScreenPort
.\screenport.exe doctor                      # 状態を表示
.\screenport.exe remote status               # 待受と鍵の一覧
.\screenport.exe firewall status             # ファイアウォールの状態
.\screenport.exe firewall allow --from LocalSubnet   # 許可ルール作成（UAC）
.\screenport.exe firewall remove             # 許可ルール削除（UAC）
.\screenport.exe autostart on                # サインイン時に起動
```

A から:

```powershell
.\screenport.exe remote add vm-b 'screenport-pair:…'
.\screenport.exe doctor --remote vm-b
```

---

## 7. やめるとき・アンインストール

1. B の設定画面で待受のチェックを外して「保存して適用」し、「許可ルールを削除」を押します。
2. 「全般」で自動起動をオフにします。
3. トレイのメニューから「終了」し、展開したフォルダーを削除します。
4. 設定（鍵を含む）を消す場合は `%APPDATA%\screenport`、記録を消す場合は `%LOCALAPPDATA%\screenport` を削除します。
