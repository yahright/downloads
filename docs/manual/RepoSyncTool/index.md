---
layout: default
title: RepoSyncTool Windows
---

# RepoSyncTool Windows ベータ

複数の Git リポジトリの状態確認・同期と、個別リポジトリの Git 操作を行うアプリです。

## ダウンロードと起動

1. [Windows ベータ配布ページ](https://github.com/yahright/downloads/releases?q=reposynctool&expanded=true) で、お使いの CPU に合う `win-x64` または `win-arm64` の `portable.zip` をダウンロードします。
2. 新しい空のフォルダーへ展開し、`RepoSyncTool.exe` を起動します。.NET の追加インストールは不要です。
3. Git 2.35 以上を別途インストールしてください。Git が PATH にない場合は、アプリの「Git設定…」で実行ファイルを指定します。
4. 「＋追加」からリポジトリを登録します。既存の監視フォルダーを使っている場合は、起動時に登録への切り替えを選べます。

Windows 版は未署名ベータです。ダウンロード時や初回起動時に Windows の警告が表示される場合があります。ZIP と同名の `.sha256` でダウンロードの SHA-256 を照合できます。

## 主な操作

- 一覧で状態を確認し、右クリックからリポジトリごとの自動同期を ON/OFF できます。
- 一括 Sync は追跡先を取得し、fast-forward 可能なリポジトリだけを更新します。未コミット変更・競合・履歴分岐などは理由付きで保留します。
- リポジトリを開くと、履歴・ブランチ・差分、stage/unstage、commit、fetch/pull/push、stash、merge/rebase などを利用できます。
- 差分で行・ハンクの部分 stage/unstage、専用ウィンドウ、左右表示、連続表示、確認済み印を利用できます。履歴は複数ブランチで絞り込めます。
- CLI は `RepoSyncTool.exe --cli`、stdio MCP は `RepoSyncTool.exe --mcp` から利用できます。

## 自動同期（任意）

先に GUI で対象フォルダーを保存し、「自動同期…」から登録するか、同梱の `register-auto-sync-windows.bat` に対象フォルダーを渡します。通常ユーザーで登録してください。

```bat
register-auto-sync-windows.bat "C:\Users\yourname\source\repos"
```

ログイン時と現地時刻 0/6/12/18 時に実行します。解除は GUI または `unregister-auto-sync-windows.bat` から行います。自動 push は既定 OFF で、必要なリポジトリだけ明示設定します。移動後は再登録してください。

## 保存先と更新

設定・Host 台帳・バックアップ・自動同期のログは、本人の `%LOCALAPPDATA%\RepoSyncTool` 配下に保存します。Git の認証には既存の Git 設定を利用します。

0.7.0 より後の版では、アプリ内で更新できます。起動時と 6 時間ごとに新しいバージョンを確認し、見つかると左下のボタンが「● 更新 x.y.z…」に変わります。「更新を確認…」で変更点を見て「ダウンロードして更新」を押すと、ZIP をダウンロードして SHA-256 を照合し、アプリを終了して同じフォルダーの中身を置き換え、起動し直します（実行中の Git 操作は Git Host で最後まで終わってから置き換えます）。ネットにつながらない PC では、手でダウンロードした ZIP を「ZIPから更新…」で指定できます（同じ場所に `.sha256` があれば照合します）。置き換えに失敗したときは元のファイルに戻して起動し、`%LOCALAPPDATA%\RepoSyncTool\logs\update.log` に理由を記録します。書き込めないフォルダー（Program Files など）に置いた場合は自動更新できません。自動確認は更新画面のチェックで OFF にできます。

0.7.0 以前の版からは、アプリを閉じて新しい ZIP を別の空フォルダーへ展開してください。自動同期を登録している場合は解除してから新しい配置で再登録します。設定ファイルを旧配布フォルダーからコピーする必要はありません。

## ベータでの確認事項

最低対応 OS、x64 実機、日本語 IME/HiDPI、別ユーザー間の IPC 拒否、実アカウントでの SSH/GCM/署名、実 TaCM の Mac・Windows 間配送、自動同期のログイン・スリープ復帰は追加受入が残ります。
