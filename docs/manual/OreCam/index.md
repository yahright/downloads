---
layout: default
title: OreCam Windows CLI Preview の使い方
---

# OreCam 0.1.0 Windows CLI Preview

Windows 11 向けの画面録画 CLI です。Intel・AMD の PC は x64 版、Arm ベースの PC は ARM64 版を選びます。ZIP を展開すると PowerShell から使えます。実行ファイルは署名なしです。GUI とカメラ録画は準備中です。

## 最初の録画

展開したフォルダーで PowerShell を開きます。最後のコマンドでメインディスプレイとシステム音声を 10 秒間録画します。

```powershell
.\orecam-winrec.exe --version
.\orecam-winrec.exe list-targets
.\orecam-winrec.exe .\recording.mp4 10 display --sys-audio
```

録画を早めに止めるには Ctrl+C を押します。録画中に作成される MP4 は H.264 映像と AAC 音声を使用します。

## 録画対象と音声

```powershell
.\orecam-winrec.exe .\window.mp4 10 window 'ウィンドウのタイトル' --sys-audio --target-audio
.\orecam-winrec.exe .\region.mp4 10 region 100 100 640 480
.\orecam-winrec.exe .\voice.m4a 10 audio --mic
```

ウィンドウのタイトルやディスプレイ ID は `list-targets` で確認できます。`display` の後ろに ID を指定すると、そのディスプレイを録画します。対象アプリの音声取得に失敗した場合は、システム全体の音声に切り替わることがあります。対象アプリだけを録音したい場合は、開始時に `System audio scope: target` と表示されることを確認してください。

`--sys-audio --mic` はシステム音声とマイクを別トラックに保存します。`--mix` を加えると 1 トラックにまとめます。`--no-cursor` でカーソルを隠し、`--max-height 1080` で高さを制限できます。

## ファイルの確認と回復

```powershell
.\orecam-winrec.exe probe .\recording.mp4
.\orecam-winrec.exe recover .
.\orecam-winrec.exe --help
```

`probe` は録画時間とトラック構成を JSON で返します。強制終了後は録画先のフォルダーで `recover` を実行します。読み取れる録画を確認し、回復済みとして扱います。

[ダウンロード](../../files/OreCam/)
