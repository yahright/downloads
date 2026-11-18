---
layout: default
title: TaCM — Windows インストールディスク
---

# TaCM — Windows インストールディスク

社内の PC を 1 台のサーバーでまとめて管理するためのソフトです（端末の状態・リモート操作・配布・AI での操作）。

**0.5.41 Beta / Windows（x64・ARM64）**

- [インストールディスクをダウンロード](https://github.com/yahright/downloads/releases/download/tacm-v0.5.41/TaCM-0.5.41-Windows.zip)（179MB）
- [リリースノート・SHA256](https://github.com/yahright/downloads/releases/tag/tacm-v0.5.41)
- [配布情報JSON](latest-windows.json)

## 使い方

1. `TaCM-0.5.41-Windows.zip` を落として展開し、`TaCM-Setup.exe` を開きます（CPU の x64／ARM64 は自動で選びます）。
2. **サーバー**にする PC（1 台）: 「サーバー」を選びます。完了画面に出る管理鍵（Admin key）は 1 度しか出ないので控えてください。続けて最初の管理ユーザーを作ります。
3. **管理される PC**: 「端末機」を選び、サーバーのアドレスを入れます。登録は「承認待ち」を選び、コンソールで承認します。
4. **管理者の PC**: 「管理機」を選ぶと、コンソールと `tacmd` が入ります。

中の `tacm-0.5.41` フォルダーは配布束です。書き換えないでください（中身は署名と SHA-256 で照合します）。

## 注意（Beta）

- 通信は今のところ HTTP（暗号化なし）です。社内の閉じたネットワークで使い、インターネットに直接出さないでください。
- `TaCM-Setup.exe` は Windows の署名が無いため、SmartScreen が警告を出します（「詳細情報」→「実行」）。会社のポリシーで止められる場合があります。
- 中の `WINDOWS-INSTALL.md` は手で入れる場合の手順です。通常は `TaCM-Setup.exe` を使ってください。
- コンソールと端末機の更新は、導入後はサーバーから配られます（このページから取り直す必要はありません）。

版 0.5.41 / コミット `a95b23b760bd` / SHA-256 `ae2d40056a7a91c7383fa3d1328e86bf14661abb72e1d788ed663f3964496a62`
