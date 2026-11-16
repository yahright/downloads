---
layout: default
title: commitcheck 説明書
---

# commitcheck 説明書

commitcheck は、残しておいてはいけないキーワードを覚えておき、ファイルの中に残っていないかをチェックするコマンドです。
デバッグ用に入れたログ出力や仮の設定が、いつのまにか push に紛れるのを防ぎます。

- 調べ方は2つです。**今あるファイルをそのまま調べる**方法と、**指定したコミットが追加した行を調べる**方法です。
- キーワードが1つでも見つかれば NG です。
- コミットは止めません。あとで外すつもりの行も、そのままコミットできます。止めるのは push のときです。
- 実行ファイル1つで動きます。git のリポジトリの外でも使えます。

## 目次

1. [入れ方](#install)
2. [5分で使ってみる](#quickstart)
3. [キーワードを登録する](#keywords)
4. [チェックする](#check)
5. [push のときに自動でチェックする](#hook)
6. [チームで使う](#team)
7. [キーワードファイルを手で編集する](#file)
8. [ほかのツールから呼び出す](#tools)
9. [困ったとき](#trouble)
10. [コマンド一覧](#commands)

<a id="install"></a>

## 1. 入れ方

### ダウンロード

[配布ページ](https://github.com/yahright/downloads/releases?q=commitcheck&expanded=true) から、お使いの環境に合うファイルをダウンロードします。

| 環境 | ファイル |
|---|---|
| Windows（Intel / AMD） | `commitcheck-<版>-windows-amd64.zip` |
| Windows（ARM） | `commitcheck-<版>-windows-arm64.zip` |
| macOS（Apple シリコン） | `commitcheck-<版>-darwin-arm64.tar.gz` |
| macOS（Intel） | `commitcheck-<版>-darwin-amd64.tar.gz` |
| Linux（x64） | `commitcheck-<版>-linux-amd64.tar.gz` |
| Linux（ARM64） | `commitcheck-<版>-linux-arm64.tar.gz` |

同じ名前の `.sha256` ファイルで、ダウンロードしたファイルの SHA-256 を照合できます。

### 置き場所

展開して出てきた `commitcheck`（Windows は `commitcheck.exe`）を、PATH の通ったフォルダに置きます。

Windows の例です。`C:\Tools\commitcheck` に展開し、そのフォルダを環境変数 PATH に追加します。

macOS・Linux の例です。

```bash
tar xzf commitcheck-*-darwin-arm64.tar.gz
```

```bash
mkdir -p ~/bin && mv commitcheck ~/bin/
```

置けたことを確認します。

```bash
commitcheck version
```

### 注意

- git のリポジトリで使う場合は、git が必要です。`git --version` が動くことを確認してください。
- 実行ファイルは署名していないベータ版です。Windows では初回に警告が出ることがあります。
- macOS でブラウザからダウンロードした場合、初回の実行が止められることがあります。そのときは次のコマンドで隔離の印を外します。

```bash
xattr -d com.apple.quarantine ~/bin/commitcheck
```

<a id="quickstart"></a>

## 2. 5分で使ってみる

デバッグ用のコードを入れるとき、そのコードの一部をキーワードとして登録します。

```bash
commitcheck add -m "同期まわりのデバッグ出力。終わったら外す" 'Console.WriteLine("★'
```

何を登録したかは、いつでも確認できます。

```bash
commitcheck list
```

```text
[global] C:/Users/you/.config/commitcheck/keywords
[local] C:/work/myapp/.git/info/commitcheck
  Console.WriteLine("★
        # 2026-11-16 MYPC: 同期まわりのデバッグ出力。終わったら外す
[team] C:/work/myapp/.commitcheck
```

作業の途中は、デバッグ用の行が入ったままコミットしてかまいません。push の前にチェックします。

```bash
commitcheck check
```

```text
NG    src/Sync.cs:42  [Console.WriteLine("★]  Console.WriteLine("★ here");
        # 2026-11-16 MYPC: 同期まわりのデバッグ出力。終わったら外す
commitcheck: NG - ファイル 128 個に 1 件ヒット、警告 0 件（キーワード 1 個）
```

表示された行を外して、もう一度チェックします。

```text
commitcheck: OK - ファイル 128 個にヒットなし（キーワード 1 個）
```

デバッグが終わったら、キーワードを消します。

```bash
commitcheck rm 'Console.WriteLine("★'
```

push の前に毎回手でチェックするのを忘れそうなら、[5章](#hook) の hook を入れてください。

<a id="keywords"></a>

## 3. キーワードを登録する

### 基本

```bash
commitcheck add <キーワード>
```

- 記号や空白を含むキーワードは、引用符で囲みます。
- `-m` でメモを付けられます。何のために入れたかを書いておくと、あとで見たときに判断できます。
- 登録した日付と端末名が、自動でメモに入ります。

### キーワードの選び方

`check` は、ファイルのどこかにキーワードがあれば NG にします。もともとのコードに普通に出てくる文字列を登録すると、常に NG になります。
「残っていてはいけない」とはっきり言える文字列を選んでください。

- デバッグ用の行にだけ出てくる、少し長めの文字列（例: `Console.WriteLine("★`）
- 自分で決めた目印（次の項）

### 目印を決めておく使い方

毎回コードを登録する代わりに、目印を1つ決めておく方法もあります。

```bash
commitcheck add --global -m "あとで外す行に付ける目印" NOCOMMIT
```

あとは、デバッグ用の行に `// NOCOMMIT` のように書くだけです。

### キーワードを使わず、行に印を付ける（QuickNav）

VS Code の拡張機能 QuickNav を使っている場合は、キーワードを登録する代わりに、行に印を付けるだけで済みます。ソースには何も書き込みません。

1. QuickNav で、あとで外す行に「Remove Before Push」の印を付けます（タグ `remove-before-push` の印です）。
2. `commitcheck check` と push 時のチェックが、その行がまだ残っていないかを調べます。

```text
NG    src/main.c:5  [mark]  printf("here\n");
        # debug print
commitcheck: NG - ファイル 128 個に 1 件ヒット、警告 0 件（キーワード 0 個、印 1 個）
```

- 印は、リポジトリ最上位の `.vscode/codemarks.json` に保存されます。commitcheck はこのファイルを読みます。
- 印を付けた行と同じ内容の行が、元の位置から前後 30 行以内に残っていれば NG です。行を消すか書き換えれば OK になります。
- ほかのタグの印（調査用のメモなど）は調べません。
- 印が効くのは、今あるファイルを調べる `check` と、push 時のチェックです。コミットを指定するチェックと `scan` では見ません。
- `commitcheck list` に、対象の印も表示されます。

### 置き場所を選ぶ

キーワードの置き場所は3つあります。チェックは3つを合わせて行います。

| 指定 | 置き場所 | 向いている使い方 |
|---|---|---|
| `--local`（既定） | `.git/info/commitcheck` | 今の作業だけのキーワード。コミットされません |
| `--global` | `~/.config/commitcheck/keywords` | 自分がどのリポジトリでも使う目印 |
| `--team` | リポジトリ直下の `.commitcheck` | チーム全員に効かせたい禁止パターン。コミットして共有します |

`--global` の場所は、環境変数 `COMMITCHECK_GLOBAL` で変えられます。同期しているフォルダを指せば、複数の端末で同じキーワードを使えます。

git のリポジトリの外では、`--local` は使えません。`--team` が「今のフォルダの `.commitcheck`」になります。上の階層に `.commitcheck` があれば、いちばん近いものを使います。

### 正規表現で登録する

```bash
commitcheck add --regex 'console\.(log|debug)\('
```

正規表現の書式は RE2 です。`\d` `\w` `\s` が使えます。後方参照（`\1`）は使えません。

### 止めずに警告だけ出す

```bash
commitcheck add --warn TODO
```

`--warn` で登録したキーワードは、見つかっても表示するだけで NG にはしません。

### 一覧と削除

```bash
commitcheck list
```

```bash
commitcheck rm <キーワード>
```

置き場所を指定しない `rm` は、`--local`、`--global`、`--team` の順に探して、最初に見つかった1つを消します。

今の作業用のキーワードをまとめて消すには、次のコマンドを使います。`--local` の分だけが空になります。

```bash
commitcheck clear
```

<a id="check"></a>

## 4. チェックする

| コマンド | 調べる範囲 |
|---|---|
| `commitcheck check` | 今あるファイルの全行 |
| `commitcheck check <コミット>...` | 指定したコミットが追加した行。複数指定できます |
| `commitcheck check <A>..<B>` | A から B までに追加された行 |
| `commitcheck check --staged` | ステージ済みの追加行 |
| `commitcheck scan <ファイルやフォルダ>...` | 指定したファイルやフォルダの全行 |

### 今あるファイルを調べる

```bash
commitcheck check
```

- ファイルを今の内容のまま、全行調べます。コミット済みかどうか、いつ入れた行かは関係ありません。数コミット前に入れた行も、残っていれば見つかります。
- 対象は、git が管理しているファイルと、まだ追加していない新しいファイルです。`.gitignore` で無視しているファイル（ビルドの出力など）は調べません。
- リポジトリのどのフォルダで実行しても、リポジトリ全体を調べます。
- git のリポジトリの外で実行すると、今のフォルダ以下のファイルをすべて調べます。
- バイナリファイルと、キーワードファイル（`.commitcheck`）は調べません。

### コミットを指定して調べる

```bash
commitcheck check a1b2c3d
```

```bash
commitcheck check a1b2c3d e4f5a6b main~3..main
```

- そのコミットが**追加した行**だけを調べます。もともとあった行や、そのコミットが消した行には反応しません。
- 「このコミットにデバッグ用の行が入っていなかったか」を確かめるときに使います。
- 結果のパスの前に、コミットが付きます。

```text
NG    a1b2c3d4:src/Sync.cs:42  [NOCOMMIT]  log("here"); // NOCOMMIT
commitcheck: NG - コミット 1 個に 1 件ヒット、警告 0 件（キーワード 1 個）
```

### 好きなファイルやフォルダを調べる

`scan` は、指定したファイルやフォルダを全行調べます。git とは関係なく動きます。

```bash
commitcheck scan src docs/readme.txt
```

- `.gitignore` は見ません。指定したフォルダの中身は、`.git` フォルダとバイナリファイルを除いて、すべて調べます。
- 引数を省くと、今のフォルダ以下を調べます。

### 結果の見方

```text
NG    src/Sync.cs:42  [Console.WriteLine("★]  Console.WriteLine("★ here");
        # 2026-11-16 MYPC: 同期まわりのデバッグ出力。終わったら外す
warn  src/Main.cs:10  [TODO]  // TODO: あとで直す
commitcheck: NG - ファイル 128 個に 1 件ヒット、警告 1 件（キーワード 2 個）
```

- 各行は「重さ、ファイル:行番号、見つかったキーワード、その行の内容」です。
- `NG` は止める対象、`warn` は警告だけのキーワードです。
- `#` の行は、登録時のメモです。
- 最後の行に、調べた数、件数、探したキーワードの数が出ます。

### チェックしないファイルを決める

説明書やテストデータのように、キーワードが書いてあって当然のファイルは、キーワードファイルに `ignore:` の行を書いて外せます。

```text
# 説明書には目印の説明が書いてある
ignore:docs/
ignore:*.min.js
ignore:test/data/*.txt
```

- 末尾が `/` の行はフォルダです。パスの途中にあるフォルダにも一致します。
- それ以外は、パス全体か、ファイル名に対するワイルドカード（`*` `?`）です。
- キーワードファイルの場所は `commitcheck paths` で分かります。チームで共有するなら `.commitcheck` に書きます。

### 文字コードについて

日本語のキーワードは、ファイルの文字コードが違っても一致します。

| ファイルの文字コード | `check`・`scan` | `check <コミット>`・`check --staged` |
|---|---|---|
| UTF-8 | ○ | ○ |
| Shift_JIS（CP932） | ○ | ○ |
| UTF-16（BOM つき） | ○ | × |

- UTF-8 として読めない行は、Shift_JIS として読みます。結果の表示は UTF-8 に直して出します。
- UTF-16 のファイルは、git が差分を「バイナリ」として扱うため、コミットを指定するチェックでは調べられません。
- EUC-JP など、ほかの文字コードの日本語には一致しません。英数字のキーワードは、どの文字コードでも一致します。

<a id="hook"></a>

## 5. push のときに自動でチェックする

リポジトリごとに、1回だけ次のコマンドを実行します。

```bash
commitcheck install-hook
```

これ以降、そのリポジトリでは次のように動きます。

- **コミットするとき**: ステージ済みの追加行にキーワードがあれば知らせます。**コミットは止めません**。
- **push するとき**: `commitcheck check` と同じように今あるファイルを調べ、キーワードが残っていれば push を止めます。

git のコマンドでも、GUI のツールでも、AI エージェントが操作する場合でも同じように動きます。キーワードが無いときは、何も表示しません。

コミットしたときの表示です。

```text
NG    a.txt:6  [NOCOMMIT]  seven NOCOMMIT
commitcheck: NG - ステージ済みの変更に 1 件ヒット、警告 0 件（キーワード 3 個）
commitcheck: コミットは通します。上の行は push の前に外してください（残っていると push を止めます）。
```

外さないまま push したときの表示です。

```text
NG    a.txt:6  [NOCOMMIT]  seven NOCOMMIT
commitcheck: NG - ファイル 128 個に 1 件ヒット、警告 0 件（キーワード 3 個）
commitcheck: push を止めました。上の行を外してコミットするか（HEAD: の行は、ファイルからは外してありますが、まだコミットされていません）、チェックを飛ばすなら --no-verify を付けて push してください。
```

### 外したのにコミットしていない場合

ファイルからは行を外したが、その変更をまだコミットしていない場合、push されるコミットには行が残っています。
この場合も push を止め、パスの前に `HEAD:` を付けて知らせます。外した変更をコミットしてから、もう一度 push してください。

```text
NG    HEAD:a.txt:6  [NOCOMMIT]  seven NOCOMMIT
```

### コミットも止めたい場合

コミットの時点で止めたいリポジトリでは、次のように入れます。

```bash
commitcheck install-hook --block-commit
```

元に戻すには、オプションなしでもう一度 `commitcheck install-hook` を実行します。

### 一度だけ飛ばす

```bash
git push --no-verify
```

`--block-commit` で入れた場合のコミットは、`git commit --no-verify` で飛ばせます。環境変数 `COMMITCHECK_SKIP=1` を設定しても飛ばせます。

### 知っておくこと

- push のチェックは、今チェックアウトしているファイルを調べます。別のブランチやタグを push する場合も、調べるのは今のファイルです。
- hook は、実行ファイルのコピーを `.git/commitcheck/` に置いて使います。元のファイルを動かしても動き続けます。
- commitcheck を新しい版に入れ替えたら、もう一度 `commitcheck install-hook` を実行してください。コピーが新しくなります。
- すでに hook がある場合は、それを残したまま、先頭に呼び出しを足します。
- hook はリポジトリごとの設定です。クローンし直したら、もう一度入れてください。

### 外す

```bash
commitcheck uninstall-hook
```

<a id="team"></a>

## 6. チームで使う

全員に効かせたいパターンは `--team` で登録し、できた `.commitcheck` をコミットします。

```bash
commitcheck add --team -m "本番で使わない接続先" 'localhost:5000'
```

```bash
git add .commitcheck
```

- `.commitcheck` には端末名を記録しません。入るのは日付とメモだけです。
- `.commitcheck` 自身は、チェックの対象から外れます。
- 登録する前に `commitcheck check` を実行し、今のコードに同じ文字列が残っていないことを確かめてください。残っていると、全員の push が止まります。残してよい場所は `ignore:` で外します。
- 各自が `commitcheck install-hook` を実行すると、push 時に自動で効きます。commitcheck を入れていない人の push は止まりません。
- 個人のデバッグ用キーワードは `--local` か `--global` に置けば、ほかの人には影響しません。

<a id="file"></a>

## 7. キーワードファイルを手で編集する

キーワードファイルは、1行に1キーワードのテキストです。エディタで直接書き換えてもかまいません。場所は次のコマンドで確認できます。

```bash
commitcheck paths
```

```text
# 直前の # 行が、そのキーワードのメモになります
NOCOMMIT

# 正規表現
re:console\.log\(

# 見つかっても止めず、警告だけ出す
warn:TODO-REMOVE
warn:re:print\("DBG

# チェックしないファイル
ignore:docs/
ignore:*.min.js

# 先頭が # warn: re: ignore: \ のキーワードは \ を付けると文字どおりに扱います
\#DEBUG
```

- 空行は区切りです。空行をはさむと、その上の `#` 行はメモになりません。
- 文字列の一致は、大文字と小文字を区別します。
- 文字コードは UTF-8 で保存してください。Shift_JIS で保存した場合も読めます。

<a id="tools"></a>

## 8. ほかのツールから呼び出す

`--porcelain` を付けると、結果だけをタブ区切りで出力します。表示言語の影響を受けません。

```bash
commitcheck check --porcelain
```

| コマンド | 1行の内容（タブ区切り） |
|---|---|
| `check --porcelain`、`scan --porcelain` | 重さ（`error` / `warn`）、置き場所、パス、行番号、キーワード、メモ、行の内容 |
| `list --porcelain` | 置き場所、重さ、種類（`fixed` / `regex`）、キーワード、メモ。`ignore:` の行は、重さが `ignore`、種類が `path`。QuickNav の印は、置き場所が `marks`、種類が `mark`、キーワードが `<パス>:<行番号>` |
| `paths` | 置き場所、ファイルの場所。`marks` の行は QuickNav の印のファイル |

「行の内容」は、行頭の空白も含めた元の行です（長い行は 200 バイトで切ります）。コミットを指定したチェックでは、パスが `<コミット>:<パス>` の形になります。QuickNav の印によるヒットは、置き場所が `marks`、キーワードが `mark` です。

終了コードは次のとおりです。

| 終了コード | 意味 |
|---|---|
| 0 | 見つからなかった（警告だけの場合も 0） |
| 1 | NG |
| 2 | 使い方の誤りや、実行時のエラー |

表示は、環境の言語が日本語なら日本語、それ以外は英語です。`COMMITCHECK_LANG=ja` または `COMMITCHECK_LANG=en` で固定できます。

<a id="trouble"></a>

## 9. 困ったとき

**登録したはずなのに見つからない**

- 大文字と小文字は区別します。`commitcheck list` で登録した文字を確認してください。
- `.gitignore` で無視しているファイルは、`check` では調べません。`commitcheck scan <フォルダ>` なら調べられます。
- `ignore:` の行で外していないか、`commitcheck list` で確認してください。
- `check <コミット>` と `check --staged` は、追加した行だけを調べます。もともとある行は対象外です。
- EUC-JP など、UTF-8・Shift_JIS・UTF-16 以外の文字コードの日本語には一致しません。

**関係ない行が見つかる**

キーワードが短すぎるか、普通のコードにも出てくる文字列です。もっと長い文字列に登録し直すか、`--warn` にしてください。説明書やテストデータなら `ignore:` で外せます。

**hook が動かない**

- `commitcheck install-hook` を、そのリポジトリの中で実行したか確認してください。
- リポジトリをクローンし直した場合は、もう一度入れる必要があります。
- git の設定 `core.hooksPath` を使っている場合、hook はそのフォルダに入ります。

**push を止められたが、もう外した**

外した変更をコミットしたか確認してください。パスの前に `HEAD:` が付いている行は、ファイルからは外れていますが、コミットがまだです。

**デバッグ用の行を、わざと残したままコミットしたい**

そのままコミットできます。既定では、コミット時は知らせるだけです。

**チェックに時間がかかる**

`check` はファイルを全部読みます。初めて読むフォルダは、ディスクからの読み込みで時間がかかります。2回目からは速くなります。
ビルドの出力などの大きなフォルダが `.gitignore` に入っていない場合は、`.gitignore` に追加するか、`ignore:` で外してください。

<a id="commands"></a>

## 10. コマンド一覧

| コマンド | 動作 |
|---|---|
| `commitcheck add [--global\|--local\|--team] [--regex] [--warn] [-m <メモ>] <キーワード>` | キーワードを登録する |
| `commitcheck list [--porcelain]` | キーワードとメモの一覧 |
| `commitcheck rm [--global\|--local\|--team] <キーワード>` | キーワードを消す |
| `commitcheck clear` | このリポジトリだけのキーワード（`--local`）を空にする |
| `commitcheck check [--porcelain]` | 今あるファイルの全行を調べる |
| `commitcheck check <コミット\|A..B>... [--porcelain]` | 指定したコミットが追加した行を調べる |
| `commitcheck check --staged [--porcelain]` | ステージ済みの追加行を調べる |
| `commitcheck scan [<ファイルやフォルダ>...] [--porcelain]` | 指定したファイルやフォルダの全行を調べる |
| `commitcheck install-hook [--block-commit]` | 自動チェックを入れる。コミット時は知らせるだけ、push 時に止める。`--block-commit` でコミットも止める |
| `commitcheck uninstall-hook` | 自動チェックを外す |
| `commitcheck paths` | キーワードファイルの場所 |
| `commitcheck version` | 版の表示 |
| `commitcheck help` | 使い方の表示 |

### 制限

- タブや引用符を含む特殊なファイル名は、パスが正しく表示されないことがあります。
