# 仮想フォルダ・仮想リスト

仮想フォルダ（仮想リスト）は、いろいろな場所にあるファイルへの参照を1つのリストにまとめたものです。実際にファイルを移動せずに、横断的なまとまりを作って扱えます。検索結果や grep 結果からまとめて作ることもできます。

## 基本の使い方

| 操作 | キー | メニュー |
|---|---|---|
| 新しい仮想リストを作成 | `Ctrl+Shift+N` | Tools → Virtual List → New Virtual Folder |
| 選択を仮想リストに追加 | `Ctrl+Shift+M` | Tools → Virtual List → Add to Virtual List |
| 既存の仮想リストに追加 | `Ctrl+Shift+L`（Win）| Tools → Virtual List → Add to Existing Virtual List |
| 仮想リストから外す | `Ctrl+Delete` | Tools → Virtual List → Remove from Virtual List |
| 仮想リストを空にする | `Ctrl+Shift+Delete` | Tools → Virtual List → Clear Virtual List |

## 検索結果からまとめて作る

**Tools → Virtual List** から、次のように結果を仮想フォルダとして開けます。

- Open Search Results as Virtual Folder（[ファイル検索](search.md)の結果）
- Open Grep Results as Virtual Folder（[grep](grep.md)の結果）

## 保存・管理

仮想フォルダは保存して後から開けます。**Tools → Virtual List → Save Virtual Folder** で保存、**Virtual Folder Manager** で一覧管理（リネーム・複製・削除）ができます。仮想フォルダを開いたタブには専用のバッジが付きます。

## スマートフォルダ

スマートフォルダは、保存した条件を開くたびに再評価する仮想フォルダです。**Go → New Smart Folder...**、**Search → New Smart Folder...**、または通常フォルダ内の何もない場所を右クリックして **New Smart Folder Here...** を選ぶと作成できます。

`Match` で全条件に一致する `All` またはいずれかに一致する `Any` を選び、Name、Extension、Kind、Size、Modified、Path、Item Type の条件を複数組み合わせます。たとえば「Kind is Audio」と「Modified within 7 days」を組み合わせると、直近7日間に更新された音声ファイルを集められます。正規表現など入力に誤りがある場合は保存できず、該当する条件行に赤枠と理由が出ます。

保存前に **Preview** で件数を確認できます。保存後はスマートフォルダタブの **Edit...**、または **Virtual Folder Manager** の **Edit...** から条件を変更できます。

### Location Launcher から開く

新規保存時に **Add to Location Launcher** を有効にして未使用キーを選ぶと、`L` でLocation Launcherを開いた後、そのキー1文字でスマートフォルダを開けます。既存のスマートフォルダはLocation Launcherの **Add Smart Folder...** から追加できます。

Launcher側で **Delete** してもスマートフォルダ本体は残ります。Virtual Folder Managerで本体を削除すると、対応するLauncher登録も一緒に削除されます。別端末との設定差などで参照先がない登録は `(missing)` と表示され、削除はできますが開けません。

[← マニュアルトップへ戻る](index.md)
