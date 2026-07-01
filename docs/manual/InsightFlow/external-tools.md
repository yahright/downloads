# 外部ツール・コマンド実行

選択したファイルを外部プログラムで開いたり、任意のコマンドを実行したりできます。すべて **Tools → Run** に集約されています。

このページでいう「コマンド」は、ざっくり次の2種類です。

| 種類 | 何に使うか | 設定場所 |
|---|---|---|
| 外部ツール | VS Code、メモ帳、比較ツールなど、よく使うアプリを登録する | Tools → Run → Manage External Tools |
| カスタムコマンド | コマンドラインを自分で書いて、現在選択中のファイルやフォルダに対して実行する | Settings → Commands → Custom Commands |

まずは「外部ツール」を使うのがおすすめです。アプリの場所と引数を分けて入力できるので、はじめてでも設定しやすくなっています。

## 実行

| 操作 | メニュー |
|---|---|
| 実行 | Tools → Run → Run |
| すぐ実行 | Tools → Run → Run Immediate（`Ctrl+Enter`）|
| 引数を付けて実行 | Tools → Run → Run with Arguments |
| 管理者として実行 | Tools → Run → Run as Admin |

## 外部ツールの登録

よく使うアプリを「外部ツール」として登録しておくと、右クリックメニューやコマンドから素早く呼び出せます。

- **Tools → Run → Register as External Tool** — 選択中の実行ファイルを外部ツールとして登録
- **Tools → Run → Manage External Tools** — 登録済みツールの管理
- **Tools → Run → Manage Custom Commands** — 独自コマンドの管理

登録した外部ツールやカスタムコマンドは、[右クリックメニュー](context-menus.md)の項目として追加したり、ファンクションキーに割り当てたりできます。

### 外部ツールを手で登録する

1. **Tools → Run → Manage External Tools** を開きます。
2. **Add** を押します。
3. **Name** に表示名を入れます。例: `VS Codeで開く`
4. **Executable** に起動したいアプリを入れます。例: `code`、`notepad.exe`、`C:\Tools\WinMerge\WinMergeU.exe`
5. **Arguments Template** に、アプリへ渡すファイルやフォルダを書きます。例: `"{target}"`
6. 必要なら **Working Directory Template** に作業フォルダを書きます。迷ったら空のままで構いません。
7. 下の **Preview** で、実際に実行される形を確認してから **OK** を押します。
8. 設定画面に戻ったら **Save** します。

`Arguments Template` では、選択中のファイルやフォルダを `{target}` のような置き換え文字で表します。

| 書き方 | 意味 | よく使う場面 |
|---|---|---|
| `{target}` | 今選んでいるファイルまたはフォルダ | 選択ファイルをエディタで開く |
| `{targetDir}` | 今選んでいる項目が入っているフォルダ | その場所でツールを動かす |
| `{active.path}` | 操作中のペインで開いているフォルダ | フォルダ全体を開く |
| `{selected.or.marked.paths}` | マークがあればマークした項目、なければ選択項目 | 複数ファイルをまとめて渡す |
| `{marked.first.path}` | マークした最初の1件 | 比較ツールの左側ファイル |
| `{other.marked.first.path}` | 反対側ペインでマークした最初の1件 | 比較ツールの右側ファイル |

ファイル名やフォルダ名に空白が入ることがあるため、1件だけ渡す場合は `"{target}"` のように `"` で囲むのが安全です。複数件を渡す `{selected.or.marked.paths}` は自動で必要な引用符が付きます。

### 外部ツールの例

| やりたいこと | Executable | Arguments Template | Working Directory Template |
|---|---|---|---|
| 選択ファイルをメモ帳で開く | `notepad.exe` | `"{target}"` | 空でOK |
| 選択ファイル/フォルダを VS Code で開く | `code` | `"{target}"` | `{targetDir}` |
| 操作中フォルダを VS Code で開く | `code` | `"{active.path}"` | `{active.path}` |
| 左右ペインでマークしたファイルを比較する | `C:\Tools\WinMerge\WinMergeU.exe` | `"{marked.first.path}" "{other.marked.first.path}"` | 空でOK |

`Executable not found` と表示される場合は、`Executable` にアプリのフルパスを指定してください。例: `C:\Program Files\Microsoft VS Code\Code.exe`

## カスタムコマンドを作る

カスタムコマンドは、1行のコマンドラインを自分で書いて実行する機能です。外部ツールより自由ですが、コマンドラインに慣れていない場合は、まず外部ツールから使う方が簡単です。

1. **Tools → Settings** を開きます。
2. 左側で **Commands** を選び、**Custom Commands** タブを開きます。
3. **Edit Custom Commands...** を押します。
4. **Add** を押します。
5. **Name** に表示名を入れます。
6. **Command Line** に実行したい内容を書きます。
7. 必要なら **Working Directory** を入れます。
8. **Insert placeholder...** で、選択中のファイルなどを表す置き換え文字を挿入できます。
9. **Preview** で展開結果を確認します。
10. **OK**、または設定画面の **Save** で保存します。

カスタムコマンドでは、置き換え文字の形が外部ツールと違います。`{target}` ではなく `${active.item.full}` のように `${...}` で書きます。

| 書き方 | 意味 |
|---|---|
| `${active.path}` | 操作中のペインで開いているフォルダ |
| `${other.path}` | 反対側ペインで開いているフォルダ |
| `${active.item.full}` | 操作中ペインで選択している項目のフルパス |
| `${active.item.name}` | 選択項目の名前 |
| `${active.item.stem}` | 拡張子を除いた名前 |
| `${active.item.ext}` | 拡張子 |
| `${active.marked.full}` | 操作中ペインでマークした項目すべて |
| `${active.marked.first.full}` | 操作中ペインでマークした最初の1件 |
| `${other.marked.full}` | 反対側ペインでマークした項目すべて |
| `${other.marked.first.full}` | 反対側ペインでマークした最初の1件 |

例:

| やりたいこと | Command Line | Working Directory |
|---|---|---|
| 選択ファイルをメモ帳で開く | `notepad.exe "${active.item.full}"` | `${active.path}` |
| 操作中フォルダをエクスプローラーで開く | `explorer.exe "${active.path}"` | 空でOK |
| マークしたファイルを VS Code で開く | `code ${active.marked.full}` | `${active.path}` |

### Run Mode の選び方

| Run Mode | 使い方 |
|---|---|
| DirectProcess | 通常はこちら。実行ファイルと引数として直接起動します。 |
| ShellExecute | Windows の関連付けやシェル機能を使いたい場合に選びます。通常は変更不要です。 |

### よくあるつまずき

- 外部ツールは `{target}`、カスタムコマンドは `${active.item.full}` のように書き方が違います。
- ファイルパスを1件だけ渡すときは、`"{target}"` や `"${active.item.full}"` のように引用符で囲むと安全です。
- 設定後は、最後に設定画面の **Save** を押してください。
- うまく動かないときは、まず **Preview** の内容を確認してください。ここに表示される文字列が、実際に実行されるコマンドです。

## エディタで開く

- `E` — 選択ファイルを設定したテキストエディタで開く（**File → Open in Text Editor**）

外部エディタやターミナルの設定は[設定](settings.md)の **Text Editor** / **Terminal** タブで行えます。

[← マニュアルトップへ戻る](index.md)
