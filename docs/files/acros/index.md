---
layout: default
title: acros — Mac版ダウンロード
---

# acros — Mac版ダウンロード

PDFの閲覧・注釈・ページ操作・本文/画像編集・フォーム入力に対応するアプリです。

**0.1.1 Beta / Apple Silicon（Mシリーズ）/ macOS 26以降**

0.1.1では、マウスのドラッグで文字の選択範囲を広げられない不具合を修正しました。
旧版を終了してからアプリを入れ替えてください。

- [DMGをダウンロード](https://github.com/yahright/downloads/releases/download/acros-v0.1.1/acros-0.1.1-osx-arm64.dmg) — 初回インストール用
- [アプリZIPをダウンロード](https://github.com/yahright/downloads/releases/download/acros-v0.1.1/acros-0.1.1-osx-arm64-app.zip) — 展開して手動で配置
- [リリースノート・SHA256](https://github.com/yahright/downloads/releases/tag/acros-v0.1.1)
- [配布情報JSON](latest-macos.json)

Developer ID署名・Apple公証済みです。DMGを開いてacros.appをApplicationsへドラッグしてください。
Homebrewや開発ツールは不要です。既定のPDFアプリは自動変更しません。

Beta版です。大切なPDFは原本を残して編集してください。自動更新は未実装です。
Intel Mac・macOS 25以前・Windowsは今回の配布に含みません。

## 主な機能

- PDFの閲覧・検索・文字コピー、タブ・複数窓、ズーム・回転・見開き、印刷。
- ハイライト、付箋、ペン、図形、日本語テキスト、画像・定型スタンプ。
- Undo/Redo、保存・別名保存、2分ごとの自動バックアップと復旧。
- ページの並べ替え・回転・削除・挿入・抽出・結合・分割、PNG/JPEG入出力、しおり編集。
- ページ直下の本文・画像編集。文字が既存フォントに無い場合は日本語フォントへ代替します。
- AcroFormの入力・保存・リセット・平坦化。署名欄の認識。
- 日本語/English UI、ライト/ダーク、アプリアイコン。

## 既知の制限

- 全てのPDFとの互換性を保証する段階ではありません。編集前の原本は別に保管してください。
- グループ（Form XObject）内の文字置換、雲/吹き出し注釈、消しゴムの部分消去は未対応です。
- 本文は1行単位で編集します。段落を自動で組み直しません。
- OCR、墨消し、パスワード設定・解除、電子署名の作成・検証、XFA、PDF内JavaScriptは未対応です。
- アプリ内の自動更新は未実装です。新版への更新は手動でアプリを差し替えてください。
- Reader/Chromeとの網羅的比較、複雑な縦書き・ルビ、実Retina・ピンチ・印刷出力・性能の受入確認が残っています。

MacのReleaseでcore28ケースとUI12ケースを確認しています。日本語注釈・本文・フォームの保存と、
macOSプレビューでの表示、暗号化PDFの編集保存、配布物の署名・公証・起動も確認済みです。
