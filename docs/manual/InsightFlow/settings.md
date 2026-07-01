# 設定

設定ダイアログは左側のタブで機能ごとに分かれています。主なタブは以下の通りです。

## メニューから開く

- メニューバーの **Tools → Settings**
- `Ctrl+P` でコマンドパレットを開き、「**Settings**」と入力して実行

## 外観・レイアウト

- **Theme** — 配色テーマ
- **Colors** — 詳細な色のカスタマイズ
- **Layout** — 全体のレイアウト
- **Pane** — ペイン表示の設定
- **Log Bar** — ログ表示バー
- **Filters** — 表示フィルタ
- **Preview** — プレビュー機能の設定

## 操作・キー割り当て

- **Key Bindings** — キーボードショートカットの割り当て。`Ctrl+F` など、通常のショートカットを変更します。
- **Function Keys** — ファンクションキーの割り当て。`F1` から `F12`、`Shift+F1` から `Shift+F12`、`Ctrl+F1` から `Ctrl+F12` に標準機能・外部ツール・カスタムコマンドを割り当てます。詳しくは[キーボードショートカット](keyboard-shortcuts.md)を参照してください。
- **Global HotKey** — アプリ非フォーカス時のグローバルホットキー

## 連携・カスタムコマンド

- **Context Menus** — 右クリックメニューのカスタマイズ（[詳細](context-menus.md)）
- **Git** — Git 連携
- **Text Editor** / **Terminal** — 外部エディタ・ターミナル連携
- **Grep & History** — grep 検索と履歴
- **Custom Commands** — 独自コマンドの追加。現在選択しているファイルやフォルダを `${active.item.full}` などの置き換え文字でコマンドに渡せます。詳しくは[外部ツール・コマンド実行](external-tools.md)を参照してください。
- **Favorites** — お気に入り

## Function Keys と Custom Commands の関係

よく使う設定の流れは次の通りです。

1. 外部アプリや独自コマンドを使いたい場合は、先に **External Tools** または **Custom Commands** で登録します。
2. それをキーで呼び出したい場合は、**Input → Function Keys** で `Fキー` に割り当てます。
3. 右クリックメニューにも出したい場合は、**Context Menus** でメニュー項目として追加します。

つまり、**Custom Commands** は「実行する内容を作る場所」、**Function Keys** は「その内容をどのキーで呼ぶかを決める場所」です。

## 検索・コンテナ・アーカイブ

- **Snapshot Search** — スナップショット検索
- **Containers** — コンテナ関連
- **Archives** — アーカイブの既定形式・圧縮設定（[詳細](archives.md)）

## ジョブ・ディスク使用量・リモート

- **Background Jobs** — コピー/削除エンジンの選択（SCOPY 含む）や同時実行数など（[詳細](scopy-copy.md)）
- **Remote** — リモートピア接続
- **Disk Usage (Basic)** / **Disk Usage (Advanced)** — ディスク使用量分析の設定

## その他

- **Updates** — アップデートの確認・自動適用
- **Diagnostics** — 診断ログ
- **About** — バージョン情報・サードパーティライセンス

[← マニュアルトップへ戻る](index.md)
