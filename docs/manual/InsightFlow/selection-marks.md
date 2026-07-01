# 選択とマーク・ラベル

複数のファイルをまとめて操作するには「マーク」を使います。

## マーク（複数選択）

カーソルを合わせて `Space` または `Insert` を押すと、その項目にマークが付きます。マークした項目は、コピー・移動・削除などの操作でまとめて対象になります。

| 操作 | キー | メニュー |
|---|---|---|
| マークの切り替え | `Space` / `Insert` | Edit → Selection → Toggle Mark |
| すべてのファイルをマーク | `A` | Edit → Selection → Mark All Files |
| フォルダも含めてすべてマーク | `Shift+A` | Edit → Selection → Mark All Items |
| すべてマーク（コマンド） | `Ctrl+A` | Edit → Selection → Mark All |
| マークを全解除 | `Ctrl+Shift+A` | Edit → Selection → Unmark All |
| マークを反転 | `Alt+A` | Edit → Selection → Invert Marks |

何もマークしていない場合は、カーソル位置の項目が操作対象になります。

## ラベル（色分け）

ファイルに色ラベルを付けて分類できます。`Alt+1`〜`Alt+7` で赤・橙・黄・緑・青・紫・灰のラベルを割り当てられます。

- メニュー: **Edit → Labels → Assign Label / Toggle Label / Remove Label**
- ラベルで絞り込み: `Ctrl+Alt+1`〜`Ctrl+Alt+7`（**Search → Label Filter**）
- 並び替え: **View → Sort → By Label**

## パス・名前のコピー

| 操作 | キー | メニュー |
|---|---|---|
| パスをコピー | `Y` | Edit → Copy Special → Copy Path |
| マークした項目のパスをコピー | `Shift+Y` | Edit → Copy Special → Copy Marked Paths |
| 名前をコピー | `Ctrl+Y` | Edit → Copy Special → Copy Name |

[← マニュアルトップへ戻る](index.md)
