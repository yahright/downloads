---
layout: default
title: commitcheck 説明書
---

# commitcheck 説明書

commitcheck は、コミットしてはいけないキーワードを覚えておき、変更の中に残っていないかをチェックするコマンドです。
デバッグ用に入れたログ出力や仮の設定が、いつのまにかコミット・push に紛れるのを防ぎます。

- 調べるのは**追加した行だけ**です。もともとあるコードや、キーワードを消す変更には反応しません。
- 追加した行にキーワードがあれば NG です。
- 実行ファイル1つで動きます。ほかに必要なのは git だけです。

## 目次

1. [入れ方](#install)
2. [5分で使ってみる](#quickstart)
3. [キーワードを登録する](#keywords)
4. [チェックする](#check)
5. [コミット・push のときに自動でチェックする](#hook)
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

- git が必要です。`git --version` が動くことを確認してください。
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

コミットの前にチェックします。

```bash
commitcheck check
```

```text
NG    src/Sync.cs:42  [Console.WriteLine("★]  Console.WriteLine("★ here");
        # 2026-11-16 MYPC: 同期まわりのデバッグ出力。終わったら外す
commitcheck: NG - 未コミットの変更に 1 件ヒット、警告 0 件（キーワード 1 個）
```

表示された行を外して、もう一度チェックします。

```text
commitcheck: OK - 未コミットの変更にヒットなし（キーワード 1 個）
```

デバッグが終わったら、キーワードを消します。

```bash
commitcheck rm 'Console.WriteLine("★'
```

毎回手でチェックするのを忘れそうなら、[5章](#hook) の hook を入れてください。

<a id="keywords"></a>

## 3. キーワードを登録する

### 基本

```bash
commitcheck add <キーワード>
```

- 記号や空白を含むキーワードは、引用符で囲みます。
- `-m` でメモを付けられます。何のために入れたかを書いておくと、あとで見たときに判断できます。
- 登録した日付と端末名が、自動でメモに入ります。

### 目印を決めておく使い方

毎回コードを登録する代わりに、目印を1つ決めておく方法もあります。

```bash
commitcheck add --global -m "あとで外す行に付ける目印" NOCOMMIT
```

あとは、デバッグ用の行に `// NOCOMMIT` のように書くだけです。

### 置き場所を選ぶ

キーワードの置き場所は3つあります。チェックは3つを合わせて行います。

| 指定 | 置き場所 | 向いている使い方 |
|---|---|---|
| `--local`（既定） | `.git/info/commitcheck` | 今の作業だけのキーワード。コミットされません |
| `--global` | `~/.config/commitcheck/keywords` | 自分がどのリポジトリでも使う目印 |
| `--team` | リポジトリ直下の `.commitcheck` | チーム全員に効かせたい禁止パターン。コミットして共有します |

`--global` の場所は、環境変数 `COMMITCHECK_GLOBAL` で変えられます。同期しているフォルダを指せば、複数の端末で同じキーワードを使えます。

### 正規表現で登録する

```bash
commitcheck add --regex 'console\.(log|debug)\('
```

正規表現の書式は RE2 です。`\d` `\w` `\s` が使えます。後方参照（`\1`）は使えません。

### 止めずに警告だけ出す

```bash
commitcheck add --warn TODO
```

`--warn` で登録したキーワードは、ヒットしても表示するだけで NG にはしません。誤検知が多そうな広いパターンに向いています。

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
| `commitcheck check` | 未コミットの変更（ステージ済みと未ステージ） |
| `commitcheck check --untracked` | 上に加えて、未追跡のテキストファイルの全行 |
| `commitcheck check --staged` | ステージ済みの変更だけ |
| `commitcheck check --unpushed` | まだどのリモートにも無いコミットの正味の変更 |
| `commitcheck check <コミット>` | そのコミット1つの変更 |
| `commitcheck check <A>..<B>` | A から B までの変更 |

### 結果の見方

```text
NG    src/Sync.cs:42  [Console.WriteLine("★]  Console.WriteLine("★ here");
        # 2026-11-16 MYPC: 同期まわりのデバッグ出力。終わったら外す
warn  src/Main.cs:10  [TODO]  // TODO: あとで直す
commitcheck: NG - 未コミットの変更に 1 件ヒット、警告 1 件（キーワード 2 個）
```

- 各行は「重さ、ファイル:行番号、ヒットしたキーワード、その行の内容」です。
- `NG` は止める対象、`warn` は警告だけのキーワードです。
- `#` の行は、登録時のメモです。
- 最後の行に、件数と、探したキーワードの数が出ます。

### 未追跡ファイルについて

git にまだ追加していない新しいファイルは、既定では調べません。ビルドの出力などが大量にあるリポジトリで遅くなるためです。
新しいファイルは `git add` した時点でチェックの対象になるので、通常は `--untracked` を付ける必要はありません。

### 「正味の変更」について

`--unpushed` と、push 時の自動チェックは、コミットを1つずつではなく、まとめた結果を見ます。
途中のコミットにキーワードが入っていても、後のコミットで外してあれば OK です。

<a id="hook"></a>

## 5. コミット・push のときに自動でチェックする

リポジトリごとに、1回だけ次のコマンドを実行します。

```bash
commitcheck install-hook
```

これ以降、そのリポジトリでは次のように動きます。

- **コミットするとき**: ステージ済みの変更を調べ、NG ならコミットを止めます。
- **push するとき**: push する正味の変更を調べ、NG なら push を止めます。

git のコマンドでも、GUI のツールでも、AI エージェントがコミットする場合でも同じように止まります。

```text
NG    a.txt:5  [NOCOMMIT]  seven NOCOMMIT
commitcheck: NG - ステージ済みの変更に 1 件ヒット、警告 0 件（キーワード 3 個）
commitcheck: コミットを止めました。上の行を外すか、チェックを飛ばすなら --no-verify を付けてコミットしてください。
```

### 一度だけ飛ばす

```bash
git commit --no-verify
```

```bash
git push --no-verify
```

環境変数 `COMMITCHECK_SKIP=1` を設定しても飛ばせます。

### 知っておくこと

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
- 各自が `commitcheck install-hook` を実行すると、コミット時に自動で効きます。commitcheck を入れていない人のコミットは止まりません。
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

# ヒットしても止めず、警告だけ出す
warn:TODO-REMOVE
warn:re:print\("DBG

# 先頭が # warn: re: \ のキーワードは \ を付けると文字どおりに扱います
\#DEBUG
```

- 空行は区切りです。空行をはさむと、その上の `#` 行はメモになりません。
- 文字列の一致は、大文字と小文字を区別します。
- 文字コードは UTF-8 で保存してください。

<a id="tools"></a>

## 8. ほかのツールから呼び出す

`--porcelain` を付けると、結果だけをタブ区切りで出力します。表示言語の影響を受けません。

```bash
commitcheck check --staged --porcelain
```

| コマンド | 1行の内容（タブ区切り） |
|---|---|
| `check --porcelain` | 重さ（`error` / `warn`）、置き場所、パス、行番号、キーワード、メモ、行の内容 |
| `list --porcelain` | 置き場所、重さ、種類（`fixed` / `regex`）、キーワード、メモ |
| `paths` | 置き場所、ファイルの場所 |

終了コードは次のとおりです。

| 終了コード | 意味 |
|---|---|
| 0 | ヒットなし（警告だけの場合も 0） |
| 1 | NG |
| 2 | 使い方の誤りや、実行時のエラー |

表示は、環境の言語が日本語なら日本語、それ以外は英語です。`COMMITCHECK_LANG=ja` または `COMMITCHECK_LANG=en` で固定できます。

<a id="trouble"></a>

## 9. 困ったとき

**登録したはずなのにヒットしない**

- 調べるのは追加した行だけです。以前からある行は対象外です。
- 新しいファイルで、まだ `git add` していない場合は対象外です。`--untracked` を付けるか、`git add` してください。
- 大文字と小文字は区別します。`commitcheck list` で登録した文字を確認してください。
- UTF-8 以外（Shift_JIS など）で保存されたファイルの中の日本語には一致しません。英数字のキーワードを使ってください。

**関係ない行がヒットする**

キーワードが短すぎると、普通のコードにも一致します。もう少し長い文字列にするか、`--warn` で登録し直してください。

**hook が動かない**

- `commitcheck install-hook` を、そのリポジトリの中で実行したか確認してください。
- リポジトリをクローンし直した場合は、もう一度入れる必要があります。
- git の設定 `core.hooksPath` を使っている場合、hook はそのフォルダに入ります。

**push を止められたが、もう外した**

キーワードを外す変更をコミットしてから、もう一度 push してください。正味の変更に残っていなければ通ります。

**「git リポジトリの中で実行してください」と出る**

リポジトリの外では、`--global` のキーワードの登録・一覧・削除だけが使えます。

<a id="commands"></a>

## 10. コマンド一覧

| コマンド | 動作 |
|---|---|
| `commitcheck add [--global\|--local\|--team] [--regex] [--warn] [-m <メモ>] <キーワード>` | キーワードを登録する |
| `commitcheck list [--porcelain]` | キーワードとメモの一覧 |
| `commitcheck rm [--global\|--local\|--team] <キーワード>` | キーワードを消す |
| `commitcheck clear` | このリポジトリだけのキーワード（`--local`）を空にする |
| `commitcheck check [--working [--untracked]\|--staged\|--unpushed\|<コミット>\|<A>..<B>] [--porcelain]` | 変更をチェックする |
| `commitcheck install-hook` | コミット時・push 時の自動チェックを入れる |
| `commitcheck uninstall-hook` | 自動チェックを外す |
| `commitcheck paths` | キーワードファイルの場所 |
| `commitcheck version` | 版の表示 |
| `commitcheck help` | 使い方の表示 |

### 制限

- すでにある `pre-push` の hook が標準入力を読む場合、commitcheck が先に読むため、その hook には届きません。
- タブや引用符を含む特殊なファイル名は、パスが正しく表示されないことがあります。
