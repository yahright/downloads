---
layout: default
title: office-ai-mcp Windows CLI Beta
---

# office-ai-mcp 0.1.0 Beta — Windows CLI

Word・Excel・PowerPointのファイルを検索・読み取り・別名編集する `office-cli` の初回ベータです。GitHub Copilot CLI等のエージェントからコマンドを実行できます。MCPサーバーやMicrosoft 365 Copilotの契約は不要です。

## ダウンロード

- [Windows x64 ZIP](https://github.com/yahright/downloads/releases/download/office-ai-mcp-v0.1.0/office-ai-mcp-0.1.0-win-x64-portable.zip)
- [Windows ARM64 ZIP](https://github.com/yahright/downloads/releases/download/office-ai-mcp-v0.1.0/office-ai-mcp-0.1.0-win-arm64-portable.zip)
- [Release / SHA256](https://github.com/yahright/downloads/releases/tag/office-ai-mcp-v0.1.0)

Windows 11用。.NETランタイム・SDK・Node.jsは不要です。ソースは非公開、配布物のみ公開しています。署名なしのベータです。

## 使い始める

1. CPUに合うZIPをダウンロードし、新しい空のローカルフォルダーに展開します。
2. PowerShellでそのフォルダーを開き、次を実行します。

```powershell
.\office-cli.exe help
.\office-cli.exe capabilities --via file
.\office-cli.exe files list --via file --dir C:\work\docs
.\office-cli.exe files search --via file --dir C:\work\docs --text 売上 --unicode raw
```

ファイル操作ではOfficeを起動しません。対応形式は閉じた `.docx` / `.xlsx` / `.pptx`。旧形式・マクロ付きは対象外です。共有フォルダーは読取のみ、編集時はローカルへコピーしてください。

エージェントには同梱 `agent/AGENTS.md` の指示を渡し、実行ファイルの場所を指定してください。Copilot経由の利用には別途GitHub Copilot CLIとその利用権限が必要です。

## 編集と更新

編集前にreadし、その `revision` を `--if-revision` に指定します。`--output` は未作成の別名ファイルにします。変更後は出力を再読取して確認してください。コマンドの引数は `help` に記載しています。

更新は新しいフォルダーに新版を展開して実行パスを切り替えます。自動更新はありません。解除は展開フォルダーを削除します（文書は削除しません）。このZIPはPATH・証明書・サービス・Officeアドインを登録しません。

## 初回ベータの範囲と既知の制限

- 配布対象はWindows CLI。Office内チャット、VSTOアドイン、Mac版は含みません。
- Windows COMライブ操作はコードに含まれますが、初回ベータの推奨経路は `--via file` です。COMにはWindows版Officeが必要です。
- PowerPointのグラフ・SmartArt等は編集対象外です。レイアウト名の改行・空白差で追加できない場合があります。
- Excelのテキストボックス・シート名・ヘッダー等の横断検索、見出しなしWordのoutline・挿入書式には未対応があります。
- 全PC・会社端末・実ファイルサーバーでの動作確認は未完了です。

同梱の第三者ライセンス表記は `THIRD-PARTY-NOTICES.txt` を参照してください。
