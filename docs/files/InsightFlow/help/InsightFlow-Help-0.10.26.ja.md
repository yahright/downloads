# InsightFlow Help 0.10.26 (ja)

Generated: 2026-10-17 03:53 UTC

この文書は AI アシスタント（NotebookLM / GitHub Copilot / ChatGPT など）に渡して InsightFlow の使い方を質問するためのものです。

## 設定の場所

### コマンド > お気に入り
- お気に入りのテキスト入力がフォーカスを得たときの IME: (`FavoriteImeModeCombo`)
- お気に入りをプレビュー (`EnableFavoritePreviewBox`)
- マクロを提案 (`EnableMacroSuggestionsBox`)
- 無効なお気に入りを警告 (`EnableFavoriteValidationWarningsBox`)

### コマンド > カスタムコマンド
- コマンドライン (`CustomCommandLineBox`)
- 作業ディレクトリ (`CustomCommandWorkingDirectoryBox`)
- 名前 (`CustomCommandNameBox`)
- 実行モード (`CustomCommandRunModeBox`)
- 実行前に確認 (`CustomCommandConfirmBeforeRunBox`)
- 展開後のコマンドライン (`CustomCommandPreviewCommandLineBox`)
- 展開後の作業ディレクトリ (`CustomCommandPreviewWorkingDirectoryBox`)
- 有効 (`CustomCommandEnabledBox`)
- 空のプレースホルダーをエラーとして扱う (`CustomCommandTreatEmptyPlaceholderAsErrorBox`)

### システム > 診断
- AI デバッグログを有効化 (`AiDebugLogBox`)
- キーデバッグログを有効化 (`KeyDebugLogBox`)
- コマンドログを有効化 (`CommandLogBox`)
- パフォーマンスログを有効化 (`PerformanceLogBox`)
- ペインデバッグログを有効化 (`PaneDebugLogBox`)

### ジョブとディスク使用量 > コピーの既定値
- Git の無視ルールに従う (.gitignore、リポジトリおよびグローバルの除外設定) (`CopyDefaultRespectGitIgnoreBox`)
- Git メタデータ (.git) を除外 (`CopyDefaultExcludeGitMetadataBox`)
- 「これらの拡張子のみ」使用時に拡張子のないファイルも含める (`CopyDefaultIncludeExtensionlessBox`)
- コピー範囲 (`CopyDefaultScopeBox`)
- フィルター後に空になるフォルダーも作成する (`CopyDefaultCreateEmptyDirectoriesBox`)
- 含める拡張子 (`CopyDefaultIncludedExtensionsBox`)
- 常に除外する拡張子 (`CopyDefaultExcludedExtensionsBox`)
- 既定のコピーフィルターを使用 (`CopyDefaultsEnabledBox`)
- 除外するフォルダー名 (`CopyDefaultExcludedFoldersBox`)

### ジョブとディスク使用量 > ディスク使用量（基本）
- SFTP 接続とファイル操作を有効化 (`RemoteEnableSftpBox`)
- 公開するルート (1 行に 1 つ。空 = すべてのドライブ) (`RemoteExposedRootsBox`)
- 受信接続を受け付ける (このマシンのファイルシステムを公開) (`RemoteServerEnabledBox`)
- 待ち受けポート (`RemotePortBox`)
- 相手側サーバーの設定に表示されている接続文字列を貼り付けてください。 (`RemoteAddConnectionStringBox`)
- 認証トークン (`RemoteTokenBox`)

### ジョブとディスク使用量 > ディスク使用量（詳細）
- MFT スナップショットは昇格時に確認が必要です (`DiskUsageMftRequiresConfirmationBox`)
- MFT 診断を表示 (`DiskUsageShowMftDiagnosticsBox`)
- NTFS MFT スナップショットバックエンドを使用 (`DiskUsageEnableNtfsMftSnapshotBackendBox`)
- SFIS タイムアウト (ミリ秒) (`DiskUsageSfisTimeoutBox`)
- UI 更新レート (FPS) (`DiskUsageMaxUiPublishFpsBox`)
- アーカイブの検出 (`DiskUsageEnableArchiveDetectionBox`)
- キャッシュの検出 (`DiskUsageEnableCacheDetectionBox`)
- クリーンアップランキングの感度 (`DiskUsageCleanupRankingSensitivityBox`)
- クリーンアップ候補を分類 (`DiskUsageEnableCleanupClassificationBox`)
- クリーンアップ候補を表示 (`DiskUsageEnableCleanupCandidatesViewBox`)
- クリーンアップ抑制ルールを使用 (`DiskUsageEnableCleanupSuppressRulesBox`)
- クリーンアップ確度を表示 (`DiskUsageEnableCleanupConfidenceBox`)
- スナップショット/インデックスバックエンドが使えないときのフォールバック (`DiskUsageFallbackOnFailureBox`)
- ディスク使用量に MFT スナップショットを優先 (`DiskUsagePreferMftSnapshotBox`)
- ディスク使用量の診断オーバーレイを表示 (`DiskUsageShowDiagnosticsOverlayBox`)
- ディスク使用量をバックグラウンドジョブで実行 (`DiskUsageRunInBackgroundBox`)
- ディスク使用量バックエンド (`DiskUsageBackendPreferenceBox`)
- パス名変更後もメモを保持 (`DiskUsagePreserveCleanupReviewNotesAcrossPathRenamesBox`)
- ビルド出力の検出 (`DiskUsageEnableBuildOutputDetectionBox`)
- リパースポイントをスキップ (`DiskUsageSkipReparsePointsBox`)
- ルートから先に表示 (`DiskUsageRootFirstPublishBox`)
- レビューバッジのスタイル (`DiskUsageCleanupReviewBadgeStyleBox`)
- レビュー中の変更を検出 (`DiskUsageEnableCleanupReviewDriftDetectionBox`)
- レビュー用キーボードショートカットを使用 (`DiskUsageEnableCleanupReviewKeyboardShortcutsBox`)
- レビュー診断オーバーレイを有効化 (`DiskUsageEnableCleanupReviewDiagnosticsOverlayBox`)
- 一括レビュー操作を許可 (`DiskUsageEnableCleanupReviewBulkOperationsBox`)
- 仮想マシンのディスクを検出 (`DiskUsageEnableVmDiskDetectionBox`)
- 依存関係ストアを検出 (`DiskUsageEnableDependencyStoreDetectionBox`)
- 保護/システム項目の警告を表示 (`DiskUsageShowProtectedSystemWarningsBox`)
- 候補の最小サイズ (バイト) (`DiskUsageMinimumCleanupCandidateBytesBox`)
- 可能なら割り当てサイズを使用 (`DiskUsageUseAllocatedSizeBox`)
- 回収可能性の確度 (`DiskUsagePotentialReclaimConfidenceBox`)
- 大きい項目から先に表示 (`DiskUsageEnableTopHeavyProgressivePublishBox`)
- 大容量項目のしきい値 (バイト) (`DiskUsageTopHeavyThresholdBytesBox`)
- 大容量項目数 (`DiskUsageHeavyHittersCountBox`)
- 大規模データセットのしきい値 (`DiskUsageMassiveDatasetThresholdBox`)
- 大規模データセットモードを使用 (`EnableMassiveDatasetModeBox`)
- 大規模モードで大容量項目を提案 (`DiskUsageSuggestHeavyHittersInMassiveModeBox`)
- 大規模モードのバナーを表示 (`DiskUsageShowMassiveModeBannerBox`)
- 抑制した候補を表示 (`DiskUsageShowSuppressedCandidatesBox`)
- 抑制ルールの診断 (`DiskUsageSuppressRuleDiagnosticsBox`)
- 既定で低確度を非表示 (`DiskUsageHideLowConfidenceByDefaultBox`)
- 既定で保護/システム項目を非表示 (`DiskUsageHideProtectedSystemByDefaultBox`)
- 最大の項目を表示 (`DiskUsageEnableHeavyHittersViewBox`)
- 最大スキャン深さ (`DiskUsageMaxDepthBox`)
- 相対パスの遅延計算 (`DiskUsageLazyRelativePathBox`)
- 表示更新のバッチサイズ (`DiskUsagePublishBatchSizeBox`)
- 表示行数の上限 (`DiskUsageMaxVisibleRowsBox`)
- 見つからないレビュー項目を表示 (`DiskUsageShowMissingCleanupReviewEntriesBox`)
- 詳細を段階的に表示 (`DiskUsageEnableProgressiveDetailRevealBox`)
- 遅延集計の間隔 (ミリ秒) (`DiskUsageDeferredAggregateIntervalBox`)
- 集計行のしきい値 (`DiskUsageSyntheticSummaryRowThresholdBox`)
- 集計行を表示 (`DiskUsageEnableSyntheticSummaryRowsBox`)

### ジョブとディスク使用量 > バックグラウンドジョブ
- SCOPY ネイティブライブラリのパス (`ScopyNativeLibraryPathBox`)
- アプリがアクティブなときは通知を抑制 (`SuppressNotificationsWhenAppActiveBox`)
- コピーエンジン (`CopyEngineBox`)
- ジョブ通知を表示 (`EnableJobNotificationsBox`)
- 保持する完了ジョブ数 (`KeepCompletedJobsCountBox`)
- 元に戻す履歴の件数 (`FileOperationUndoHistoryLimitBox`)
- 削除エンジン (`DeleteEngineBox`)
- 同時実行ファイルジョブ数の上限 (`MaxConcurrentFileJobsBox`)
- 失敗したジョブはクリアするまで保持 (`KeepFailedJobsUntilClearedBox`)
- 失敗時に通知 (`NotifyOnFailedBox`)
- 安全側に倒したファイル操作の「元に戻す」を有効化 (実験的、任意) (`EnableFileOperationUndoBox`)
- 完了したジョブを自動クリアするまでの時間 (分) (`AutoClearCompletedAfterMinutesBox`)
- 完了時に通知 (`NotifyOnCompletedBox`)
- 既定のジョブ優先度 (`DefaultJobPriorityBox`)
- 有効 (`RunSameDestinationSequentialBox`)
- 確認が必要なときに通知 (`NotifyOnNeedsAttentionBox`)
- 長時間ジョブの実行中はシステムのスリープを防ぐ (`PreventSystemSleepDuringLongRunningJobsBox`)
- 長時間ジョブの実行中はディスプレイのスリープを防ぐ (`PreventDisplaySleepDuringLongRunningJobsBox`)

### 一般 > AI チャット
- 1 行に 1 形式。両方のダイアログの「日付名」ボタンに現在時刻でのプレビュー付きで一覧表示されます。 (`AiChatApiKeyBox`)
- 1 行に 1 形式。両方のダイアログの「日付名」ボタンに現在時刻でのプレビュー付きで一覧表示されます。 (`AiChatDefaultAgentBox`)
- 1 行に 1 形式。両方のダイアログの「日付名」ボタンに現在時刻でのプレビュー付きで一覧表示されます。 (`AiChatManifestThresholdBox`)
- 1 行に 1 形式。両方のダイアログの「日付名」ボタンに現在時刻でのプレビュー付きで一覧表示されます。 (`AiChatPermissionPolicyBox`)
- AI チャットを有効にする (`AiChatEnabledBox`)
- API キー (`AiChatAuthApiKeyRadio`)
- JSON-RPC ログを書き出す (`AiChatJsonRpcLogBox`)
- アクティブペインのフォルダを添付する (`AiChatAutoAttachActivePaneBox`)
- エージェントの思考を表示する (`AiChatShowThoughtsBox`)
- カーソル項目を添付する (`AiChatAutoAttachCursorItemBox`)
- サブスクリプション (claude でログイン) (`AiChatAuthSubscriptionRadio`)
- ツール呼び出しを折りたたむ (`AiChatCollapseToolCallsBox`)
- パネルを開いたときに自動で接続する (`AiChatAutoConnectBox`)
- マーク項目を添付する (`AiChatAutoAttachMarksBox`)
- 前回のセッションを復元する (`AiChatRestoreSessionBox`)
- 各メッセージの前に送る指示を表示する (`AiChatShowPreambleBox`)
- 回答の本文からファイルパスを拾う (コードブロックが無い場合) (`AiChatExtractPathsBox`)
- 検索結果とリストの内容を添付する (`AiChatAutoAttachSearchResultsBox`)

### 一般 > テーマ
- アプリのテーマ (`ThemeModeBox`)

### 一般 > ラベル
- ADS 優先 (推奨) - NTFS 代替データストリームを使用し、使えない場合はデータベースにフォールバック (`LabelModeAdsRadio`)
- データベースのみ - ラベルを InsightFlow のデータベースに保存し、ファイルには触れません (`LabelModeDbRadio`)
- 無効 (ラベルは利用できません) (`LabelModeDisabledRadio`)

### 一般 > 名前テンプレート
- 1 行に 1 形式。両方のダイアログの「日付名」ボタンに現在時刻でのプレビュー付きで一覧表示されます。 (`NamingTemplateListBox`)
- 「フォルダーを作成」ダイアログにこの名前を入力しておく (`AutoFillNewFolderNameBox`)
- 「新しいテキストファイル」ダイアログにこの名前を入力しておく (`AutoFillNewFileNameBox`)
- 新規ファイル名の形式 (`NewFileNameTemplateBox`)
- 新規フォルダー名の形式 (`NewFolderNameTemplateBox`)
- 生成した名前が既に存在する場合は _2, _3, ... を付加 (`EnsureUniqueGeneratedNameBox`)

### 一般 > 自動化
- 1 行に 1 形式。両方のダイアログの「日付名」ボタンに現在時刻でのプレビュー付きで一覧表示されます。 (`InterfaceLanguageBox`)
- Automation enabled (`AutomationEnabledBox`)

### 一般 > 色
- アクティブな境界線 (`FileListActivePaneBorderHexBox`)
- ファイルテキスト (`FileListFileForegroundHexBox`)
- フォルダーテキスト (`FileListFolderForegroundHexBox`)
- ホバー背景 (`FileListHoverBackgroundHexBox`)
- 交互行の背景 (`FileListAltRowBackgroundHexBox`)
- 編集中のバリアント (`ColorEditVariantBox`)
- 背景 (`FileListBackgroundHexBox`)
- 選択の背景 (`FileListSelectionBackgroundHexBox`)
- 選択テキスト (`FileListSelectionForegroundHexBox`)
- 非アクティブな境界線 (`FileListInactivePaneBorderHexBox`)

### 入力 > グローバルホットキー
- グローバルホットキーを有効化 (`GlobalHotKeyEnabledBox`)

### 入力 > コンテキストメニュー
- コマンド (`ContextMenuCommandBox`)
- コマンド (`ContextMenuPaletteSearchBox`)
- セクション (`ContextMenuSectionBox`)
- プレビュー形式 (`ContextMenuPreviewContextBox`)
- ラベル (`ContextMenuLabelBox`)
- 編集中のメニュー: (`ContextMenuProfileBox`)

### 更新 > 更新
- プレリリースビルドを含める (`IncludePreReleaseBuildsBox`)
- マニフェスト URL (`UpdateManifestUrlBox`)
- 更新を確認 (`EnableUpdateChecksBox`)
- 更新チャネル (`UpdateChannelBox`)
- 起動時に確認 (`CheckUpdatesOnStartupBox`)

### 検索とストレージ > アーカイブ
- zstd を自動検出 (`AutoDetectZstdBox`)
- zstd 実行可能パス (`ZstdExecutablePathBox`)
- アーカイブ一時フォルダー (`ArchiveTempDirectoryBox`)
- アーカイブ診断を有効化 (`EnableArchiveDiagnosticsBox`)
- 使用できるポータブルマクロ: {AppDir}、{ToolsDir}、{SettingsDir}、{LogDir}。自動変換は行われません。 (`ExtractOverwritePolicyBox`)
- 大きなアーカイブには tar.zst を優先 (`PreferTarZstdForLargeArchivesBox`)
- 既定のアーカイブ形式 (`DefaultArchiveFormatBox`)
- 既定の圧縮プリセット (`DefaultCompressionPresetBox`)
- 既定の展開動作 (`DefaultExtractBehaviorBox`)

### 検索とストレージ > コンテナ
- 7z を自動検出 (`AutoDetectSevenZipBox`)
- 7z バックエンド (`SevenZipBackendBox`)
- 7z ファイルを参照 (`EnableSevenZipProviderBox`)
- 7z 列挙タイムアウト ミリ秒 (`SevenZipEnumerationTimeoutBox`)
- 7z 実行可能パス (`SevenZipExecutablePathBox`)
- 7z 診断を有効化 (`EnableSevenZipDiagnosticsBox`)
- ZIP ファイルを参照 (`EnableZipProviderBox`)
- コンテナセッションキャッシュの上限 (`ContainerSessionCacheSizeBox`)
- コンテナメタデータの遅延読み込み (`LazyContainerMetadataBox`)
- コンテナ診断を表示 (`ShowContainerDiagnosticsBox`)
- バックグラウンドでのコンテナインデックス作成 (`BackgroundContainerIndexingBox`)
- 同時に開くコンテナ数の上限 (`MaxOpenContainerSessionsBox`)
- 対応コンテナを参照 (`EnableContainerProvidersBox`)

### 検索とストレージ > スナップショット検索
- MFT スナップショット検索を優先 (`PreferMftSnapshotSearchBox`)
- UI 更新レート (FPS) (`SnapshotSearchPublishFpsBox`)
- スナップショット検索を使用 (`EnableSnapshotSearchBox`)
- 前方一致を優先 (`EnablePrefixRankingBox`)
- 最大結果数 (`SnapshotSearchMaxResultsBox`)
- 最近使用した結果を優先 (`EnableRecentnessBoostBox`)
- 検索診断を有効化 (`EnableSearchDiagnosticsBox`)
- 表示更新のバッチサイズ (`SnapshotSearchBatchSizeBox`)

### 表示 > フィルター
- ファイル (`DisplayIgnoreFilesBox`)
- フィルターを選択 (`DisplayIgnoreKindBox`)
- フィルターを選択 (`DisplayIgnorePatternBox`)
- フィルターを選択 (`FuzzySelectFilterModeBox`)
- フォルダー (`DisplayIgnoreDirectoriesBox`)
- 無視した項目を表示 (`ShowIgnoredItemsBox`)
- 表示無視ルールを有効化 (`DisplayIgnoreEnabledBox`)
- 隠しファイルにも無視ルールを適用 (`ApplyIgnoreRulesToHiddenFilesBox`)

### 表示 > プレビュー
- Office はプラットフォームプレビューを優先 (`PreferPlatformPreviewForOfficeBox`)
- Office プレビュー (`EnableOfficePreviewBox`)
- Office 項目数の上限 (`MaxOfficeItemsBox`)
- PDF プレビュー (`EnablePdfPreviewBox`)
- PDF ページ数の上限 (`MaxPdfPagesBox`)
- PDF レンダリング スケール (`PdfRenderScaleBox`)
- アーカイブのプレビュー (`EnableArchivePreviewBox`)
- アーカイブ項目数の上限 (`MaxArchiveEntriesBox`)
- キーボード遅延 (ミリ秒) (`KeyboardDebounceMsBox`)
- キーリピート抑制 (ミリ秒) (`KeyboardRepeatSuppressMsBox`)
- クラウドのみのファイルのプレビュー (`CloudOnlyPreviewModeBox`)
- テキストプレビュー上限 (バイト) (`MaxTextPreviewBytesBox`)
- ディスクキャッシュを有効化 (`EnableDiskCacheBox`)
- ディスクキャッシュ上限 (MB) (`DiskCacheMaxSizeMBBox`)
- ディレクトリ項目数の上限 (`MaxDirectoryPreviewItemsBox`)
- ネットワークパスはメタデータのみ (`MetadataOnlyForNetworkPathsBox`)
- ネットワークパスをキャッシュ (`DiskCacheNetworkPathsBox`)
- ネットワークパスを先読み (`PreviewPreloadNetworkPathsBox`)
- フル画像デコードのピクセル上限 (`FullImageMaxDecodePixelsBox`)
- プラットフォームプレビューの診断を表示 (`ShowPlatformPreviewDiagnosticsBox`)
- プラットフォームプレビューを使用 (`EnablePlatformPreviewBackendBox`)
- プレビューパイプラインのイベントをログに記録 (`LogPreviewPipelineEventsBox`)
- プレビューパイプラインを使用 (`EnablePreviewPipelineBox`)
- プレビュー診断オーバーレイを表示 (`ShowPreviewDiagnosticsOverlayBox`)
- プレビュー遅延 (ミリ秒) (`RichPreviewDebounceMsBox`)
- プログレッシブ プレビューのピクセル制限 (`ProgressiveImageMaxPreviewPixelsBox`)
- ポインター遅延 (ミリ秒) (`PointerDebounceMsBox`)
- マークダウンプレビュー (`EnableMarkdownPreviewBox`)
- メモリキャッシュ上限 (MB) (`PreviewCacheMemoryLimitBox`)
- リッチプレビューを使用 (`EnableRichPreviewBox`)
- レンダリング済み PDF プレビュー (`EnableRenderedPdfPreviewBox`)
- 世代 ID を表示 (`ShowGenerationIdsBox`)
- 先に低解像度の画像を表示 (`EnableLowResolutionImageFirstBox`)
- 先読みファイルサイズ上限 (MB) (`PreviewPreloadMaxFileSizeBox`)
- 先読み項目の上限 (`PreviewPreloadMaxItemsBox`)
- 内部 PDF レンダラーを優先 (`PreferInternalPdfRendererOverPlatformPdfPreviewBox`)
- 再帰プレビューの進捗を表示 (`ShowRecursivePreviewProgressBox`)
- 再帰時の項目数上限 (`MaxRecursivePreviewItemsBox`)
- 再帰的なフォルダーのプレビューを許可する (`EnableRecursivePreviewBox`)
- 前方に先読みする項目数 (`PreloadForwardCountBox`)
- 古いプレビューをキャンセル (`EnablePreviewCancellationBox`)
- 後方に先読みする項目数 (`PreloadBackwardCountBox`)
- 既定のフォルダープレビュー (`DefaultFolderPreviewModeBox`)
- 最新のプレビューのみ表示 (`EnableLatestOnlyPublishBox`)
- 画像デコード上限 (バイト) (`MaxImageDecodeBytesBox`)
- 画像プレビューを段階的に読み込む (`EnableProgressiveImagePreviewBox`)
- 移動方向を考慮した先読み (`DirectionAwarePreloadBox`)
- 読み込みインジケーターの遅延 (ミリ秒) (`LoadingIndicatorDelayMsBox`)
- 読み込みインジケーターを表示 (`ShowPreviewLoadingIndicatorBox`)
- 読み込み中は前のリッチプレビューを維持 (`KeepPreviousRichPreviewWhileLoadingBox`)
- 軽量プレビューを使用 (`EnableLightweightPreviewBox`)
- 近くのプレビューを先読み (`EnablePreviewPreloadBox`)
- 選択変更時にリッチ プレビューをクリア (`ClearRichPreviewOnSelectionChangeBox`)
- 高速移動中はリッチプレビューを抑制 (`SuppressRichPreviewDuringRapidNavigationBox`)

### 表示 > ペイン
- アイドル時のマージ遅延 (ミリ秒) (`IncrementalPublishIdleMsBox`)
- アクティブ中はライブ更新を遅延 (`StableLiveDeferWhileTypingBox`)
- コピーしたパスを引用符で囲む (`QuoteCopiedPathsBox`)
- コンパクト (`CompactSizeRadio`)
- ディスク使用量バーを表示 (`ShowDiskUsageBarBox`)
- バイト数 (`RawBytesSizeRadio`)
- バッチサイズ (`IncrementalPublishBatchSizeBox`)
- バッチ遅延 (ミリ秒) (`IncrementalPublishBatchDelayMsBox`)
- ファイルアイコンを表示 (`ShowFileIconsBox`)
- ファイル名のプレビューを表示 (`ShowFilenamePreviewBox`)
- ファイル操作前に確認 (`ConfirmBeforeCopyOperationBox`)
- ファンクションキーバーを表示 (`ShowFunctionKeyBarBox`)
- ペインのタブ (`PaneTabsPlacementBox`)
- ペイン情報の行数 (`PaneInfoAreaLinesBox`)
- ペイン情報エリアを表示 (`ShowPaneInfoAreaBox`)
- マウス操作を有効化 (`EnableMouseSupportBox`)
- マークした項目の合計サイズを表示 (`ShowMarkedTotalSizeBox`)
- ログパネルを表示 (`ShowLogPanelBox`)
- ワークスペース切り替え時 (`WorkspaceSwitchBehaviorBox`)
- 再読み込みのしきい値 (`IncrementalReloadThresholdBox`)
- 増分表示更新 (`IncrementalPublishPolicyBox`)
- 安定状態の遅延 (ミリ秒) (`StableLiveUpdateIntervalMsBox`)
- 安定状態の項目数しきい値 (`StableLiveMaxPendingBeforeApplyBox`)
- 戻る/進むボタンを表示 (`ShowNavigationButtonsBox`)
- 縞模様 (交互の行の色) (`ZebraStripingBox`)
- 複数パスの区切り文字 (`MultiplePathSeparatorBox`)
- 読みやすい単位 (`HumanReadableSizeRadio`)

### 表示 > レイアウト
- サイズ (`ShowSizeColumnBox`)
- サイズの列幅 (`SizeWidthBox`)
- ファイル種別ごとに名前を色分け (フォルダー/画像/動画/アーカイブ/実行ファイル…) (`ColorByFileTypeBox`)
- リストのフォント (`ListFontFamilyBox`)
- リストのフォントサイズ (`ListFontSizeBox`)
- 交互行のコントラスト (`ZebraIntensitySlider`)
- 列ヘッダーを表示 (クリックして並べ替え) (`ShowColumnHeaderBox`)
- 垂直 (`VerticalGridLinesBox`)
- 属性 (`ShowAttrColumnBox`)
- 属性の列幅 (`AttrWidthBox`)
- 拡張子 (`ShowExtColumnBox`)
- 拡張子の列幅 (`ExtWidthBox`)
- 更新日時 (`ShowModifiedColumnBox`)
- 更新日時の列幅 (`TimeWidthBox`)
- 水平 (`HorizontalGridLinesBox`)
- 行の高さ (`RowHeightBox`)

### 表示 > ログバー
- 最大件数 (`LogBarMaxEntriesBox`)
- 最新が表示されているときは自動スクロール (`LogBarAutoScrollBox`)
- 表示行数 (`LogBarVisibleLinesBox`)

### 連携 > Git
- Git SVN コマンドを表示 (`GitSvnEnabledBox`)
- Git 実行ファイル (`GitPathBox`)
- Git 統合を使用 (`GitEnabledBox`)
- OpenSSH (`SshOpenSshRadio`)
- OpenSSH パス (`OpenSshPathBox`)
- PuTTY / plink (`SshPlinkRadio`)
- PuTTY plink のパス (`PlinkPathBox`)
- システム既定 (`SshSystemDefaultRadio`)
- ファイルを開くときの動作 (`GitOpenFileBehaviorBox`)
- 実際のコマンド (`EffectiveSshCommandBox`)
- 既定で完全なパッチを表示 (`GitShowFullPatchByDefaultBox`)
- 既定のログ件数 (`GitDefaultLogCountBox`)
- 追加の SSH 引数 (`ExtraSshArgsBox`)

### 連携 > Grep と履歴
- Shift+J 入力履歴を有効化 (`EnableJumpHistoryBox`)
- rgパス (`RipgrepPathBox`)
- sgパス (`SgrepPathBox`)
- コマンド呼び出し履歴を有効化 (`EnableExecutionHistoryBox`)
- バックエンド (`GrepBackendBox`)
- 失敗したジャンプ入力を履歴に保存 (`SaveFailedJumpInputsBox`)
- 失敗した実行を履歴に保存 (`SaveFailedExecutionsBox`)
- 成功した実行を履歴に保存 (`SaveSucceededExecutionsBox`)
- 新しい順に並べる (`JumpHistoryRecentFirstBox`)
- 最大件数 (`MaxExecutionHistoryEntriesBox`)
- 最大件数 (`MaxJumpHistoryEntriesBox`)

### 連携 > ターミナル
- コマンドライン (`TerminalCommandLineBox`)
- ターミナル統合を使用 (`TerminalEnabledBox`)
- 作業ディレクトリ (`TerminalWorkingDirectoryBox`)

### 連携 > テキストエディター
- エディターのパス (`EditorPathBox`)
- 引数テンプレート (`ArgumentsTemplateBox`)

## コマンド一覧

### AI チャット
- **AI チャット: パネルを切り替え** (`ToggleAiChatPanel`) — keys: `{"windows":["Ctrl\u002BShift\u002BI"],"mac":["Ctrl\u002BShift\u002BI"]}`; menu: 表示 > AI チャットを表示; 

### Git
- **Git SVN DCommit** (`GitSvnDCommit`) — keys: `{"windows":[],"mac":[]}`; menu: ; git svn dcommit (SVN ブリッジ)。
- **Git SVN フェッチ** (`GitSvnFetch`) — keys: `{"windows":[],"mac":[]}`; menu: ; git svn fetch (SVN ブリッジ)。
- **Git すべてステージ** (`GitStageAll`) — keys: `{"windows":[],"mac":[]}`; menu: Git > Git すべてステージ; すべての変更をステージします。
- **Git すべてステージ解除** (`GitUnstageAll`) — keys: `{"windows":[],"mac":[]}`; menu: Git > Git すべてステージ解除; すべてステージ解除します。
- **Git ウィンドウを開く** (`OpenGitWindow`) — keys: `{"windows":["G"],"mac":["G"]}`; menu: Git > Git ウィンドウ; このリポジトリの Git ツールウィンドウを開きます。
- **Git コミット** (`GitCommit`) — keys: `{"windows":[],"mac":[]}`; menu: Git > Git コミット; ステージ済みの変更をコミットします (コミット画面を開きます)。
- **Git スコープを更新** (`RefreshGitScope`) — keys: `{"windows":["Ctrl\u002BG"],"mac":["\u2318\u002BG"]}`; menu: Git > Git スコープを更新; Git の状態とファイル一覧を更新します。
- **Git スコープを表示** (`ShowGitScope`) — keys: `{"windows":[],"mac":[]}`; menu: Git > Git スコープを表示; UI に Git スコープ / ステージ済みビューを表示します。
- **Git ステージ切り替え** (`GitToggleStage`) — keys: `{"windows":[],"mac":[]}`; menu: Git > Git ステージ切り替え; 選択したファイルのステージ/ステージ解除を切り替えます。
- **Git プッシュ** (`GitPush`) — keys: `{"windows":[],"mac":[]}`; menu: Git > Git プッシュ; リモートにプッシュします。
- **Git プル** (`GitPull`) — keys: `{"windows":[],"mac":[]}`; menu: Git > Git プル; リモートからプルします。
- **Git ログ** (`GitLog`) — keys: `{"windows":[],"mac":[]}`; menu: Git > Git ログ; 現在のコンテキストの履歴を表示します。
- **Git 差分** (`GitDiff`) — keys: `{"windows":[],"mac":[]}`; menu: Git > Git 差分; 選択中またはフォーカス中のファイルの差分を表示します。
- **フォルダー内のリポジトリをスキャン** (`ScanRepositoriesInFolder`) — keys: `{"windows":[],"mac":[]}`; menu: Git > フォルダー内のリポジトリをスキャン; 現在のフォルダー配下の Git リポジトリをスキャンして登録します。
- **リポジトリを登録** (`RegisterRepository`) — keys: `{"windows":[],"mac":[]}`; menu: Git > リポジトリを登録; 現在のフォルダーをリポジトリ一覧に登録します。
- **リポジトリ一覧を開く** (`OpenRepositoryList`) — keys: `{"windows":[],"mac":[]}`; menu: Git > リポジトリ一覧; リポジトリ一覧ランチャーを開き、Git ウィンドウで開くリポジトリを選択します。

### お気に入り
- **お気に入りを表示** (`ShowFavorites`) — keys: `{"windows":["J"],"mac":["J"]}`; menu: 移動 > お気に入り > お気に入りを表示; お気に入りを開いてジャンプします。
- **お気に入りを追加** (`AddFavorite`) — keys: `{"windows":["=","Add","\u002B"],"mac":["=","Add","\u002B"]}`; menu: 移動 > お気に入り > お気に入りを追加; 現在のフォルダーまたは選択内容をお気に入りに追加します。

### アプリケーション
- **AI 用ヘルプファイルを開く** (`RevealHelpBundle`) — keys: `{"windows":[],"mac":[]}`; menu: ヘルプ > AI 用ヘルプファイルを開く…; 同梱された AI 向けヘルプファイル（英語・日本語）を表示します。
- **オンラインマニュアル** (`OpenOnlineManual`) — keys: `{"windows":[],"mac":[]}`; menu: ヘルプ > オンラインマニュアル; 公開されている InsightFlow マニュアルを既定のブラウザーで開きます。
- **キャンセル** (`Cancel`) — keys: `{"windows":[],"mac":[]}`; menu: ; 現在の長時間操作をキャンセルします。
- **キーボードのヘルプ** (`ShowKeyboardHelp`) — keys: `{"windows":[],"mac":[]}`; menu: ヘルプ > キーボードのヘルプ; キーボードショートカットダイアログを開きます。
- **コマンドヘルプの切り替え** (`ToggleCommandHelp`) — keys: `{"windows":["Ctrl\u002BH"],"mac":["Ctrl\u002BH"]}`; menu: ヘルプ > コマンドヘルプ; コマンドヘルプウィンドウを開くかフォーカスします。
- **コマンドログパネルの切り替え** (`ToggleCommandLogPanel`) — keys: `{"windows":["Ctrl\u002BShift\u002BL"],"mac":["Ctrl\u002BShift\u002BL"]}`; menu: 表示 > コマンドログパネルの切り替え; コマンドログパネルの表示/非表示を切り替えます。
- **バージョン情報** (`ShowAbout`) — keys: `{"windows":[],"mac":[]}`; menu: ヘルプ > バージョン情報; 
- **フィードバックを送信** (`SendFeedback`) — keys: `{"windows":[],"mac":[]}`; menu: ヘルプ > フィードバック送信 / 問題の報告; 
- **ポータブルパッケージのエクスポート** (`PackageExport`) — keys: `{"windows":[],"mac":[]}`; menu: ファイル > ポータブル パッケージのエクスポート...; アプリ、設定、ツール、プラグイン、スクリプト、および任意のランタイムデータを含むポータブルパッケージを作成します。
- **ワークスペースをインポート** (`ImportWorkspace`) — keys: `{"windows":[],"mac":[]}`; menu: ファイル > ワークスペースをインポート...; 
- **ワークスペースをエクスポート** (`ExportWorkspace`) — keys: `{"windows":[],"mac":[]}`; menu: ファイル > ワークスペースをエクスポート...; 
- **ワークスペースを保存...** (`SaveWorkspace`) — keys: `{"windows":["Ctrl\u002BS"],"mac":["\u2318\u002BS"]}`; menu: ファイル > ワークスペースを保存...; 現在のタブとレイアウトを名前付きワークスペースとして保存します。
- **ワークスペースを管理...** (`ManageWorkspaces`) — keys: `{"windows":["Ctrl\u002BShift\u002BO"],"mac":["\u2318\u002BShift\u002BO"]}`; menu: ファイル > ワークスペースを管理...; 保存済みの名前付きワークスペースの名前変更や削除を行います。
- **ワークスペースを開く...** (`OpenWorkspace`) — keys: `{"windows":["Ctrl\u002BO"],"mac":["\u2318\u002BO"]}`; menu: ファイル > ワークスペースを開く...; 保存済みの名前付きワークスペースを開きます。
- **更新を確認** (`CheckForUpdates`) — keys: `{"windows":[],"mac":[]}`; menu: ヘルプ > 更新を確認; 
- **現在のジョブをバックグラウンドへ** (`SendCurrentJobToBackground`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > ジョブ > 現在のジョブをバックグラウンドへ; 現在の長時間操作をバックグラウンドに送ります。
- **終了** (`Quit`) — keys: `{"windows":[],"mac":[]}`; menu: ファイル > 終了; 
- **設定** (`Settings`) — keys: `{"windows":["Ctrl\u002B,"],"mac":["\u2318\u002B,"]}`; menu: ツール > 設定; アプリケーション設定を開きます。

### アーカイブ
- **7z に圧縮** (`CompressToSevenZip`) — keys: `{"windows":[],"mac":[]}`; menu: ファイル > アーカイブ > 7z に圧縮; 
- **ZIP に圧縮** (`CompressToZip`) — keys: `{"windows":[],"mac":[]}`; menu: ファイル > アーカイブ > ZIP に圧縮; 
- **tar.zst に圧縮** (`CompressToTarZstd`) — keys: `{"windows":[],"mac":[]}`; menu: ファイル > アーカイブ > tar.zst に圧縮; 
- **ここに展開** (`ExtractHere`) — keys: `{"windows":[],"mac":[]}`; menu: ファイル > アーカイブ > ここに展開; 
- **アーカイブ名のフォルダーに展開** (`ExtractToArchiveDirectory`) — keys: `{"windows":[],"mac":[]}`; menu: ファイル > アーカイブ > アーカイブ名のフォルダーに展開; 
- **圧縮...** (`CompressAdvanced`) — keys: `{"windows":[],"mac":[]}`; menu: ファイル > アーカイブ > 圧縮...; 
- **展開...** (`ExtractAdvanced`) — keys: `{"windows":[],"mac":[]}`; menu: ファイル > アーカイブ > 展開...; 
- **展開先...** (`ExtractTo`) — keys: `{"windows":[],"mac":[]}`; menu: ファイル > アーカイブ > 展開先...; 

### コマンド
- **コマンドパレット** (`ShowCommandPalette`) — keys: `{"windows":["Ctrl\u002BP"],"mac":["\u2318\u002BP"]}`; menu: ヘルプ > コマンドパレット; コマンドを検索して実行します。

### シェルフ
- **シェルフ: アクティブなペインにコピー** (`ShelfCopyToActivePane`) — keys: `{"windows":["Shift\u002BV"],"mac":["Shift\u002BV"]}`; menu: ツール > シェルフ > シェルフをアクティブなペインにコピー; 
- **シェルフ: アクティブなペインに移動** (`ShelfMoveToActivePane`) — keys: `{"windows":["Ctrl\u002BV"],"mac":["Ctrl\u002BV"]}`; menu: ツール > シェルフ > シェルフをアクティブなペインに移動; 
- **シェルフ: クリア** (`ClearShelf`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > シェルフ > シェルフをクリア; 
- **シェルフ: 他のペインにコピー** (`ShelfCopyToOtherPane`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > シェルフ > シェルフを他のペインにコピー; 
- **シェルフ: 他のペインに移動** (`ShelfMoveToOtherPane`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > シェルフ > シェルフを他のペインに移動; 
- **シェルフ: 内容を表示** (`ToggleShelf`) — keys: `{"windows":["Ctrl\u002BShift\u002BV"],"mac":["Ctrl\u002BShift\u002BV"]}`; menu: ツール > シェルフ > シェルフを表示; 
- **シェルフ: 選択項目を削除** (`RemoveFromShelf`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > シェルフ > 選択項目をシェルフから削除; 
- **シェルフに追加** (`AddToShelf`) — keys: `{"windows":["V"],"mac":["V"]}`; menu: ツール > シェルフ > 選択項目をシェルフに追加; 

### ジョブ
- **ジョブを再試行** (`RetryJob`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > ジョブ > 選択したジョブを再試行; 選択した失敗ジョブを再試行します。
- **ジョブを表示** (`ShowJobs`) — keys: `{"windows":["Ctrl\u002BJ"],"mac":["\u2318\u002BJ"]}`; menu: ツール > ジョブ > ジョブを表示; バックグラウンドジョブパネルを開きます。
- **失敗分のみ再試行** (`RetryFailedOnly`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > ジョブ > 失敗分のみ再試行; ジョブの失敗したステップのみ再試行します。
- **完了したジョブをクリア** (`ClearFinishedJobs`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > ジョブ > 完了したジョブをクリア; 完了したジョブをジョブ一覧から削除します。

### タブ
- **タブを閉じる** (`CloseTab`) — keys: `{"windows":["Ctrl\u002BW"],"mac":["\u2318\u002BW"]}`; menu: ファイル > タブを閉じる; 現在のタブを閉じます。
- **仮想リストから削除** (`RemoveFromVirtualList`) — keys: `{"windows":["Ctrl\u002BDelete"],"mac":["Ctrl\u002BDelete"]}`; menu: 編集 > 仮想リストから削除; 選択した項目を仮想リストから削除します。
- **仮想リストに追加** (`AddToVirtualList`) — keys: `{"windows":["Ctrl\u002BShift\u002BM"],"mac":["\u2318\u002BShift\u002BM"]}`; menu: ツール > 仮想リスト > 仮想リストに追加; 選択項目を現在の仮想リストに追加します。
- **仮想リストのクリア** (`ClearVirtualList`) — keys: `{"windows":["Ctrl\u002BShift\u002BDelete"],"mac":["Ctrl\u002BShift\u002BDelete"]}`; menu: ツール > 仮想リスト > 仮想リストのクリア; 仮想リストからすべての項目を削除します。
- **仮想リストの名前を変更** (`RenameVirtualList`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 仮想リスト > 仮想リストの名前を変更; 現在の仮想リストタブの名前を変更します。
- **前のタブ** (`PreviousTab`) — keys: `{"windows":["Ctrl\u002BShift\u002BTab"],"mac":["Ctrl\u002BShift\u002BTab"]}`; menu: ファイル > 前のタブ; 前のタブに切り替えます。
- **新しいタブ** (`NewTab`) — keys: `{"windows":["Ctrl\u002BT"],"mac":["\u2318\u002BT"]}`; menu: ファイル > 新しいタブ; ペインに新しいタブを開きます。
- **新しい仮想フォルダー** (`CreateVirtualList`) — keys: `{"windows":["Ctrl\u002BShift\u002BN"],"mac":["\u2318\u002BShift\u002BN"]}`; menu: ツール > 仮想リスト > 新しい仮想フォルダー; 名前付きのユーザー仮想フォルダーを作成します。
- **検索結果を仮想リストに追加** (`AddSearchResultsToVirtualList`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 仮想リスト > 検索結果を仮想リストに追加; 検索ヒットを仮想リストに送ります。
- **次のタブ** (`NextTab`) — keys: `{"windows":["Ctrl\u002BTab"],"mac":["Ctrl\u002BTab"]}`; menu: ファイル > 次のタブ; 次のタブに切り替えます。

### ターミナル
- **ここでターミナルを開く** (`OpenTerminalHere`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > ターミナル > ここでターミナルを開く; 選択したフォルダー、またはファイル選択時はその親フォルダーでターミナルを開きます。
- **ここで管理者としてターミナルを開く** (`OpenTerminalHereAsAdmin`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > ターミナル > ここで管理者としてターミナルを開く; 選択したフォルダー、またはファイル選択時はその親フォルダーで管理者権限のターミナルを開きます (Windows)。
- **ターミナルを開く** (`OpenTerminal`) — keys: `{"windows":["Ctrl\u002B\u0060"],"mac":["\u2318\u002B\u0060"]}`; menu: ツール > ターミナル > ターミナルを開く; アクティブなフォルダーでターミナルを開きます。
- **ターミナルを開く (他のペイン)** (`OpenTerminalOtherPane`) — keys: `{"windows":["Ctrl\u002BShift\u002B\u0060"],"mac":["\u2318\u002BShift\u002B\u0060"]}`; menu: ツール > ターミナル > 他のペインでターミナルを開く; 他方のペインのフォルダーでターミナルを開きます。
- **管理者としてターミナルを開く** (`OpenTerminalAsAdmin`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > ターミナル > 管理者としてターミナルを開く; アクティブなフォルダーで管理者権限のターミナルを開きます (Windows)。

### ツール
- **メモ** (`ShowMemos`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > メモ; テキストメモとパスに紐づくメモを開きます。

### ディスク
- **ディスク使用量の生データ表** (`DiskUsageRawTable`) — keys: `{"windows":["Ctrl\u002BU"],"mac":["\u2318\u002BU"]}`; menu: ツール > ディスク使用量; 
- **ディスク使用量ツリーマップ** (`DiskUsageTreeMap`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > ディスク使用量ツリーマップ; 

### ナビゲーション
- **サーバーに接続** (`ConnectToServer`) — keys: `{"windows":[],"mac":[]}`; menu: ファイル > サーバーに接続; ネットワークサーバー (SMB) に接続してアクティブなペインで開きます。
- **パスジャンプ** (`PathJump`) — keys: `{"windows":["Shift\u002BJ"],"mac":["Shift\u002BJ"]}`; menu: 移動 > パスジャンプ; パスを入力してジャンプします (クイックパス入力)。
- **ページアップ** (`PageUpItems`) — keys: `{"windows":[",","PageUp"],"mac":[",","PageUp"]}`; menu: 移動 > カーソル > ページアップ; リストを 1 ページ上にスクロールします。
- **ページダウン** (`PageDownItems`) — keys: `{"windows":[".","PageDown"],"mac":[".","PageDown"]}`; menu: 移動 > カーソル > ページダウン; リストを 1 ページ下にスクロールします。
- **リモートピアに接続** (`ConnectToRemote`) — keys: `{"windows":[],"mac":[]}`; menu: ファイル > リモートに接続...; 登録済みの InsightFlow リモートピア (IFRP) に接続して開き、ロケーションランチャーに登録します。
- **ルート** (`GoRoot`) — keys: `{"windows":["\\"],"mac":["\\"]}`; menu: 移動 > ルート; 現在のドライブ、共有、またはアーカイブのルートに移動します。
- **ロケーションランチャー** (`ShowLocationLauncher`) — keys: `{"windows":["L"],"mac":["L"]}`; menu: 移動 > ロケーションランチャー; 開くドライブまたは既知のフォルダーを選択します。
- **上へ** (`Up`) — keys: `{"windows":["U","Alt\u002BUp"],"mac":["U","Option\u002BUp"]}`; menu: 移動 > 親; 親フォルダーに移動します。
- **上へ選択** (`SelectUp`) — keys: `{"windows":["P"],"mac":["P"]}`; menu: 移動 > カーソル > 上へ; 選択範囲を前の行に移動します。
- **下** (`MoveToBottom`) — keys: `{"windows":["Ctrl\u002BEnd","Ctrl\u002BDown"],"mac":["Ctrl\u002BEnd","\u2318\u002BDown"]}`; menu: 移動 > カーソル > 下; 選択を表示中の最後の行に移動します。
- **下へ** (`Down`) — keys: `{"windows":["N"],"mac":["N"]}`; menu: 移動 > カーソル > 下へ; 選択範囲を次の行に移動します。
- **先頭** (`MoveToTop`) — keys: `{"windows":["Ctrl\u002BHome","Ctrl\u002BUp"],"mac":["Ctrl\u002BHome","\u2318\u002BUp"]}`; menu: 移動 > カーソル > 先頭; 選択を表示中の最初の行に移動します。
- **履歴** (`ShowHistory`) — keys: `{"windows":["H"],"mac":["H"]}`; menu: 移動 > 履歴; 最近の場所を参照して再度開きます。
- **履歴を戻る** (`HistoryBack`) — keys: `{"windows":["Ctrl\u002BShift\u002BLeft","Alt\u002BLeft"],"mac":["\u2318\u002BShift\u002BLeft","Option\u002BLeft"]}`; menu: 移動 > 戻る; ペインの履歴を戻ります。
- **履歴を進む** (`HistoryForward`) — keys: `{"windows":["Ctrl\u002BShift\u002BRight","Alt\u002BRight"],"mac":["\u2318\u002BShift\u002BRight","Option\u002BRight"]}`; menu: 移動 > 進む; ペインの履歴を進みます。
- **最初のファイル** (`MoveToFirstFile`) — keys: `{"windows":["Shift\u002BN"],"mac":["Shift\u002BN"]}`; menu: 移動 > カーソル > 最初のファイル; 最初のファイルにジャンプします (ディレクトリはスキップ)。
- **最後のフォルダー** (`MoveToLastFolder`) — keys: `{"windows":["Shift\u002BP"],"mac":["Shift\u002BP"]}`; menu: 移動 > カーソル > 最後のフォルダー; リストの最後のフォルダーにジャンプします。
- **最近のファイル** (`ShowRecentFiles`) — keys: `{"windows":[],"mac":[]}`; menu: 移動 > 最近のファイル; 

### パス
- **パス編集をキャンセル** (`PathEditCancel`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **パス編集を確定** (`PathEditCommit`) — keys: `{"windows":[],"mac":[]}`; menu: ; 

### ファイル
- **エクスプローラーメニュー** (`ShowShellContextMenu`) — keys: `{"windows":["Shift\u002BZ"],"mac":["Shift\u002BZ"]}`; menu: ファイル > 情報 > エクスプローラーメニュー; 選択またはマークした項目のネイティブシェルコンテキストメニューを表示します。
- **コピー** (`Copy`) — keys: `{"windows":["C","F5"],"mac":["C","F5"]}`; menu: ファイル > 他のペインにコピー; 選択またはマークした項目を他方のペインにコピーします。
- **コピー先...** (`CopyTo`) — keys: `{"windows":[],"mac":[]}`; menu: ファイル > コピー先...; 選択またはマークした項目を指定したフォルダーにコピーします。
- **コンテキストメニュー** (`ShowFileListContextMenu`) — keys: `{"windows":["Z"],"mac":["Z"]}`; menu: ファイル > 情報 > コンテキストメニュー; ファイルリストの右クリックと同じコンテキストメニューを表示します。
- **ゴミ箱に移動** (`Delete`) — keys: `{"windows":["D","Delete","F8"],"mac":["D","Delete","F8"]}`; menu: ファイル > ゴミ箱に移動; 選択またはマークした項目をゴミ箱に移動します (確認あり)。
- **チェックサムを検証...** (`VerifyChecksum`) — keys: `{"windows":[],"mac":[]}`; menu: ; 選択した項目をチェックサムマニフェストと照合します。
- **チェックサムを計算...** (`ComputeChecksum`) — keys: `{"windows":["Ctrl\u002BShift\u002BK"],"mac":["\u2318\u002BShift\u002BK"]}`; menu: ; 選択またはマークした項目のチェックサムを計算します。
- **テキストエディターで開く** (`OpenInTextEditor`) — keys: `{"windows":["E"],"mac":["E"]}`; menu: ファイル > テキストエディターで開く; 選択したファイルを設定済みのテキストエディターで開きます。
- **ディレクトリを作成** (`MkDir`) — keys: `{"windows":["K","F7"],"mac":["K","F7"]}`; menu: ファイル > ディレクトリを作成; アクティブなペインに新しいフォルダーを作成します。
- **パスをコピー** (`CopySelectedPath`) — keys: `{"windows":["Y"],"mac":["Y"]}`; menu: 編集 > 特殊コピー > パスをコピー; 選択した項目のフルパスをクリップボードにコピーします。
- **パスをコマンド引数としてコピー** (`CopyPathAsCommandArgument`) — keys: `{"windows":[],"mac":[]}`; menu: 編集 > 特殊コピー > パスをコマンド引数としてコピー; 選択またはマークしたパスを引用符付きのコマンド引数としてコピーします。
- **パスを引用符なしでコピー** (`CopySelectedPathUnquoted`) — keys: `{"windows":[],"mac":[]}`; menu: 編集 > 特殊コピー > パスを引用符なしでコピー; 選択した項目のフルパスを引用符で囲まずにクリップボードにコピーします。
- **パスストック: クリア** (`ClearPathStock`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > パスストック > パスストックをクリア; セッション限定のパスストック履歴をクリアします。
- **パスストック: 内容を表示** (`TogglePathStock`) — keys: `{"windows":["Ctrl\u002BShift\u002BC"],"mac":["Ctrl\u002BShift\u002BC"]}`; menu: ツール > パスストック > パスストックを表示; InsightFlow がコピーした最近のパス文字列を表示します。
- **ファイル操作を元に戻す** (`UndoFileOperation`) — keys: `{"windows":["Ctrl\u002BZ"],"mac":["\u2318\u002BZ"]}`; menu: 編集 > ファイル操作を元に戻す; 直近の対象となるコピー、移動、名前変更、フォルダー作成を安全に元に戻します。
- **ファイル操作履歴...** (`ShowOperationHistory`) — keys: `{"windows":["Ctrl\u002BShift\u002BZ"],"mac":["\u2318\u002BShift\u002BZ"]}`; menu: 編集 > ファイル操作履歴...; 安全に元に戻せない項目も含め、記録されたファイル操作を表示します。
- **フィルター付きでコピー...** (`CopyWithOptions`) — keys: `{"windows":["Shift\u002BF5"],"mac":["Shift\u002BF5"]}`; menu: ; 拡張子とフォルダーのフィルターを使って、選択またはマークした項目をコピーします。
- **フォルダーの同期** (`FolderSyncDialog`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > フォルダーの同期; 2 つのローカルフォルダーを比較し、確認済みの更新またはミラー操作をキューに追加します。
- **フォルダーサイズを計算** (`CalculateFolderSizes`) — keys: `{"windows":["Ctrl\u002BShift\u002BU"],"mac":["\u2318\u002BShift\u002BU"]}`; menu: ; アクティブなペインのフォルダーサイズを計算します。
- **フォルダー情報** (`ShowFolderInformation`) — keys: `{"windows":[],"mac":[]}`; menu: ファイル > 情報 > フォルダー情報...; 現在のビューまたは選択フォルダーの件数、拡張子統計、CSV エクスポートを軽量に表示します。
- **プロパティ** (`ShellOpenProperties`) — keys: `{"windows":["Alt\u002BEnter"],"mac":["Option\u002BEnter"]}`; menu: ファイル > 情報 > システムのプロパティ; アクティブまたはマークした項目の OS の「プロパティ」ダイアログを開きます。
- **マークしたパスをコピー** (`CopyMarkedPaths`) — keys: `{"windows":["Shift\u002BY"],"mac":["Shift\u002BY"]}`; menu: 編集 > 特殊コピー > マークしたパスをコピー; マークした項目のフルパスをクリップボードにコピーします。
- **マークした名前をコピー** (`CopyMarkedNames`) — keys: `{"windows":["Ctrl\u002BShift\u002BY"],"mac":["Ctrl\u002BShift\u002BY"]}`; menu: 編集 > 特殊コピー > マークした名前をコピー; マークしたファイル/フォルダー名をクリップボードにコピーします。
- **名前の一括変更** (`BatchRename`) — keys: `{"windows":["Shift\u002BR"],"mac":["Shift\u002BR"]}`; menu: ファイル > 名前の一括変更; ルールパイプラインのプレビュー付きで、選択またはマークした項目の名前を一括変更します。
- **名前の一括変更（フォルダー内の全項目）** (`BatchRename`) — keys: `{"windows":["Shift\u002BR"],"mac":["Shift\u002BR"]}`; menu: ファイル > 名前の一括変更; ルールパイプラインのプレビュー付きで、選択またはマークした項目の名前を一括変更します。
- **名前の一括変更（配下を再帰・ファイル + フォルダー）** (`BatchRename`) — keys: `{"windows":["Shift\u002BR"],"mac":["Shift\u002BR"]}`; menu: ファイル > 名前の一括変更; ルールパイプラインのプレビュー付きで、選択またはマークした項目の名前を一括変更します。
- **名前の一括変更（配下を再帰・ファイルのみ）** (`BatchRename`) — keys: `{"windows":["Shift\u002BR"],"mac":["Shift\u002BR"]}`; menu: ファイル > 名前の一括変更; ルールパイプラインのプレビュー付きで、選択またはマークした項目の名前を一括変更します。
- **名前の変更** (`Rename`) — keys: `{"windows":["R"],"mac":["R"]}`; menu: ファイル > 名前の変更; 選択したファイルまたはフォルダーの名前を変更します。
- **名前をコピー** (`CopySelectedName`) — keys: `{"windows":["Ctrl\u002BY"],"mac":["Ctrl\u002BY"]}`; menu: 編集 > 特殊コピー > 名前をコピー; 選択したファイル/フォルダー名をクリップボードにコピーします。
- **外部のエクスプローラー/Finder で開く** (`OpenActiveFolderExternally`) — keys: `{"windows":[],"mac":[]}`; menu: ファイル > ファイルマネージャーで開く; 
- **完全に削除** (`DeleteForce`) — keys: `{"windows":["Shift\u002BD","Shift\u002BDelete"],"mac":["Shift\u002BD","Shift\u002BDelete"]}`; menu: ファイル > 完全に削除; 選択またはマークした項目を確認後に完全削除します (Shift+D または Shift+Del)。
- **情報** (`ShowProperties`) — keys: `{"windows":["I"],"mac":["I"]}`; menu: ファイル > 情報 > 情報...; アクティブまたはマークした項目の InsightFlow 情報を表示します。
- **新しいテキスト ファイル** (`CreateTextFile`) — keys: `{"windows":["Shift\u002BE"],"mac":["Shift\u002BE"]}`; menu: ファイル > 新しいテキスト ファイル; ここに新しい空のテキストファイルを作成します。
- **移動** (`Move`) — keys: `{"windows":["M","F6"],"mac":["M","F6"]}`; menu: ファイル > 移動; 選択した項目またはマークを付けた項目を別のペインに移動します。
- **移動先...** (`MoveTo`) — keys: `{"windows":[],"mac":[]}`; menu: ファイル > 移動先...; 選択またはマークした項目を指定したフォルダーに移動します。
- **親パスをコピー** (`CopySelectedParentPath`) — keys: `{"windows":[],"mac":[]}`; menu: 編集 > 特殊コピー > 親パスをコピー; 
- **読み取り専用の切り替え** (`ToggleReadOnly`) — keys: `{"windows":[],"mac":[]}`; menu: ファイル > 読み取り専用の切り替え; 
- **貼り付け** (`Paste`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **重複ファイルを検索** (`DuplicateFinderDialog`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 重複ファイルを検索; 名前、サイズ、または内容で重複ファイルをスキャンし、削除前に確認します。

### ブックマーク
- **ブックマークの切り替え** (`ToggleBookMark`) — keys: `{"windows":["B"],"mac":["B"]}`; menu: 移動 > ブックマーク > ブックマークの切り替え; 選択した項目または現在のフォルダーをブックマークに追加/削除します。
- **ブックマークを削除** (`RemoveBookmark`) — keys: `{"windows":[],"mac":[]}`; menu: 移動 > ブックマーク > ブックマークを削除; 選択した項目または現在のフォルダーのブックマークを削除します。
- **ブックマークを表示** (`ShowBookmarks`) — keys: `{"windows":["Ctrl\u002BShift\u002BD"],"mac":["Ctrl\u002BShift\u002BD"]}`; menu: 移動 > ブックマーク > ブックマークを表示; ブックマークを開いてジャンプします。
- **ブックマークを追加** (`AddBookmark`) — keys: `{"windows":["Ctrl\u002BD"],"mac":["Ctrl\u002BD"]}`; menu: 移動 > ブックマーク > ブックマークを追加; 選択した項目または現在のフォルダーを一時的なナビゲーションブックマークとして追加します。
- **ブックマーク一覧を開く** (`OpenBookmarkList`) — keys: `{"windows":["Ctrl\u002BB"],"mac":["Ctrl\u002BB"]}`; menu: 移動 > ブックマーク > ブックマーク一覧を開く; ブックマーク一覧を仮想リストとして開きます。反対側のペインが選択に追従します。
- **前のブックマーク** (`PreviousBookmark`) — keys: `{"windows":["Alt\u002BOem4","Shift\u002BF2"],"mac":["Option\u002BOem4","Shift\u002BF2"]}`; menu: 移動 > ブックマーク > 前のブックマーク; 前のブックマークにジャンプします (先頭で末尾に戻ります)。
- **次のブックマーク** (`NextBookmark`) — keys: `{"windows":["Alt\u002B]","F2"],"mac":["Option\u002B]","F2"]}`; menu: 移動 > ブックマーク > 次のブックマーク; 次のブックマークにジャンプします (末尾で先頭に戻ります)。

### プレビュー
- **ウィンドウプレビューの切り替え** (`ToggleWindowPreview`) — keys: `{"windows":["Shift\u002BF3"],"mac":["Shift\u002BF3"]}`; menu: 表示 > ウィンドウプレビューの切り替え; グローバル/ウィンドウのプレビューモードを切り替えます。
- **ウィンドウプレビューを固定** (`PinWindowPreview`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **クラウドのファイルをダウンロード** (`DownloadCloudFiles`) — keys: `{"windows":[],"mac":[]}`; menu: 表示 > クラウドのファイルをダウンロード; 
- **テキストビューアーの切り替え** (`TogglePaneTextViewer`) — keys: `{"windows":["T","Ctrl\u002BF3"],"mac":["T","Ctrl\u002BF3"]}`; menu: 表示 > テキストビューアーの切り替え; ファイル種別にかかわらず、選択したファイルをプレーンテキストとして強制表示します。
- **ペインのプレビューの切り替え** (`TogglePanePreview`) — keys: `{"windows":["F3"],"mac":["F3"]}`; menu: 表示 > ペインのプレビューの切り替え; アクティブなペインのプレビューを切り替えます。
- **固定プレビューを開く** (`OpenPinnedPreview`) — keys: `{"windows":["Ctrl\u002BShift\u002BF3"],"mac":["Ctrl\u002BShift\u002BF3"]}`; menu: 表示 > 固定プレビューを開く; 

### ペイン
- **アクティブなペインを他方のパスへ** (`GoOtherToActivePath`) — keys: `{"windows":["Shift\u002BO"],"mac":["Shift\u002BO"]}`; menu: 移動 > ペインのパス > アクティブなペインを他方のパスへ; 他方のペインのパスをアクティブなペインで開きます。
- **アクティブ側を他方に同期** (`SyncActiveToOther`) — keys: `{"windows":["Ctrl\u002BLeft"],"mac":["\u2318\u002BLeft"]}`; menu: 移動 > ペインのパス > アクティブ側を他方に同期; 他方のペインのパスをアクティブなペインに合わせます。
- **ナビゲーションロックの切り替え** (`ToggleNavigationLock`) — keys: `{"windows":["Ctrl\u002BK"],"mac":["\u2318\u002BK"]}`; menu: ; ペインをロックし、一方の移動と同じ相対パスをもう一方にも反映します。
- **他方のペインをアクティブ側のパスへ** (`GoActiveToOtherPath`) — keys: `{"windows":["O"],"mac":["O"]}`; menu: 移動 > ペインのパス > 他方のペインをアクティブ側のパスへ; アクティブなペインのパスを他方のペインで開きます。
- **他方をアクティブ側に同期** (`SyncOtherToActive`) — keys: `{"windows":["Ctrl\u002BRight"],"mac":["\u2318\u002BRight"]}`; menu: 移動 > ペインのパス > 他方をアクティブ側に同期; アクティブなペインのパスを他方のペインに合わせます。

### ユーザー
- **User Slot 1** (`UserSlot1`) — keys: `{"windows":["F1"],"mac":["F1"]}`; menu: ; 
- **User Slot 10** (`UserSlot10`) — keys: `{"windows":["F10"],"mac":["F10"]}`; menu: ; 
- **User Slot 11** (`UserSlot11`) — keys: `{"windows":["F11"],"mac":["F11"]}`; menu: ; 
- **User Slot 12** (`UserSlot12`) — keys: `{"windows":["F12"],"mac":["F12"]}`; menu: ; 
- **User Slot 13** (`UserSlot13`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 14** (`UserSlot14`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 15** (`UserSlot15`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 16** (`UserSlot16`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 17** (`UserSlot17`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 18** (`UserSlot18`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 19** (`UserSlot19`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 2** (`UserSlot2`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 20** (`UserSlot20`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 21** (`UserSlot21`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 22** (`UserSlot22`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 23** (`UserSlot23`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 24** (`UserSlot24`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 25** (`UserSlot25`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 26** (`UserSlot26`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 27** (`UserSlot27`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 28** (`UserSlot28`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 29** (`UserSlot29`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 3** (`UserSlot3`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 30** (`UserSlot30`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 31** (`UserSlot31`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 32** (`UserSlot32`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 33** (`UserSlot33`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 34** (`UserSlot34`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 35** (`UserSlot35`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 36** (`UserSlot36`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 4** (`UserSlot4`) — keys: `{"windows":["F4"],"mac":["F4"]}`; menu: ; 
- **User Slot 5** (`UserSlot5`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 6** (`UserSlot6`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 7** (`UserSlot7`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 8** (`UserSlot8`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **User Slot 9** (`UserSlot9`) — keys: `{"windows":["F9"],"mac":["F9"]}`; menu: ; 

### ラベル
- **Assign Label: Archive** (`AssignLabel`) — keys: `{"windows":["Alt\u002BD1","Alt\u002BD2","Alt\u002BD3","Alt\u002BD4","Alt\u002BD5","Alt\u002BD6","Alt\u002BD7"],"mac":["Option\u002BD1","Option\u002BD2","Option\u002BD3","Option\u002BD4","Option\u002BD5","Option\u002BD6","Option\u002BD7"]}`; menu: 編集 > ラベル > ラベルを割り当て > Important; 
- **Assign Label: Done** (`AssignLabel`) — keys: `{"windows":["Alt\u002BD1","Alt\u002BD2","Alt\u002BD3","Alt\u002BD4","Alt\u002BD5","Alt\u002BD6","Alt\u002BD7"],"mac":["Option\u002BD1","Option\u002BD2","Option\u002BD3","Option\u002BD4","Option\u002BD5","Option\u002BD6","Option\u002BD7"]}`; menu: 編集 > ラベル > ラベルを割り当て > Important; 
- **Assign Label: Important** (`AssignLabel`) — keys: `{"windows":["Alt\u002BD1","Alt\u002BD2","Alt\u002BD3","Alt\u002BD4","Alt\u002BD5","Alt\u002BD6","Alt\u002BD7"],"mac":["Option\u002BD1","Option\u002BD2","Option\u002BD3","Option\u002BD4","Option\u002BD5","Option\u002BD6","Option\u002BD7"]}`; menu: 編集 > ラベル > ラベルを割り当て > Important; 
- **Assign Label: Later** (`AssignLabel`) — keys: `{"windows":["Alt\u002BD1","Alt\u002BD2","Alt\u002BD3","Alt\u002BD4","Alt\u002BD5","Alt\u002BD6","Alt\u002BD7"],"mac":["Option\u002BD1","Option\u002BD2","Option\u002BD3","Option\u002BD4","Option\u002BD5","Option\u002BD6","Option\u002BD7"]}`; menu: 編集 > ラベル > ラベルを割り当て > Important; 
- **Assign Label: Reference** (`AssignLabel`) — keys: `{"windows":["Alt\u002BD1","Alt\u002BD2","Alt\u002BD3","Alt\u002BD4","Alt\u002BD5","Alt\u002BD6","Alt\u002BD7"],"mac":["Option\u002BD1","Option\u002BD2","Option\u002BD3","Option\u002BD4","Option\u002BD5","Option\u002BD6","Option\u002BD7"]}`; menu: 編集 > ラベル > ラベルを割り当て > Important; 
- **Assign Label: Review** (`AssignLabel`) — keys: `{"windows":["Alt\u002BD1","Alt\u002BD2","Alt\u002BD3","Alt\u002BD4","Alt\u002BD5","Alt\u002BD6","Alt\u002BD7"],"mac":["Option\u002BD1","Option\u002BD2","Option\u002BD3","Option\u002BD4","Option\u002BD5","Option\u002BD6","Option\u002BD7"]}`; menu: 編集 > ラベル > ラベルを割り当て > Important; 
- **Assign Label: Waiting** (`AssignLabel`) — keys: `{"windows":["Alt\u002BD1","Alt\u002BD2","Alt\u002BD3","Alt\u002BD4","Alt\u002BD5","Alt\u002BD6","Alt\u002BD7"],"mac":["Option\u002BD1","Option\u002BD2","Option\u002BD3","Option\u002BD4","Option\u002BD5","Option\u002BD6","Option\u002BD7"]}`; menu: 編集 > ラベル > ラベルを割り当て > Important; 
- **Toggle Label: Archive** (`ToggleLabel`) — keys: `{"windows":[],"mac":[]}`; menu: 編集 > ラベル > ラベルの切り替え > Important; 
- **Toggle Label: Done** (`ToggleLabel`) — keys: `{"windows":[],"mac":[]}`; menu: 編集 > ラベル > ラベルの切り替え > Important; 
- **Toggle Label: Important** (`ToggleLabel`) — keys: `{"windows":[],"mac":[]}`; menu: 編集 > ラベル > ラベルの切り替え > Important; 
- **Toggle Label: Later** (`ToggleLabel`) — keys: `{"windows":[],"mac":[]}`; menu: 編集 > ラベル > ラベルの切り替え > Important; 
- **Toggle Label: Reference** (`ToggleLabel`) — keys: `{"windows":[],"mac":[]}`; menu: 編集 > ラベル > ラベルの切り替え > Important; 
- **Toggle Label: Review** (`ToggleLabel`) — keys: `{"windows":[],"mac":[]}`; menu: 編集 > ラベル > ラベルの切り替え > Important; 
- **Toggle Label: Waiting** (`ToggleLabel`) — keys: `{"windows":[],"mac":[]}`; menu: 編集 > ラベル > ラベルの切り替え > Important; 
- **ラベルの切り替え** (`ToggleLabel`) — keys: `{"windows":[],"mac":[]}`; menu: 編集 > ラベル > ラベルの切り替え > Important; 
- **ラベルをクリア** (`ClearLabels`) — keys: `{"windows":[],"mac":[]}`; menu: 編集 > ラベル > ラベルをクリア; 
- **ラベルを削除** (`RemoveLabel`) — keys: `{"windows":[],"mac":[]}`; menu: 編集 > ラベル > ラベルを削除 > Important; 
- **ラベルを割り当て** (`AssignLabel`) — keys: `{"windows":["Alt\u002BD1","Alt\u002BD2","Alt\u002BD3","Alt\u002BD4","Alt\u002BD5","Alt\u002BD6","Alt\u002BD7"],"mac":["Option\u002BD1","Option\u002BD2","Option\u002BD3","Option\u002BD4","Option\u002BD5","Option\u002BD6","Option\u002BD7"]}`; menu: 編集 > ラベル > ラベルを割り当て > Important; 

### 仮想リスト
- **Grep 結果を仮想フォルダーとして開く** (`OpenGrepResultsAsVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 仮想リスト > Grep 結果を仮想フォルダーとして開く; Grep 結果を仮想フォルダーとして開きます。
- **SFIS 結果を仮想フォルダーとして開く** (`OpenSfisResultsAsVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 仮想リスト > SFIS 結果を仮想フォルダーとして開く; SFIS の結果を仮想フォルダーとして開きます。
- **すべての仮想フォルダーを保存** (`SaveAllVirtualFolders`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 仮想リスト > すべての仮想フォルダーを保存; 
- **仮想フォルダーから削除** (`RemoveFromVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 仮想リスト > 仮想フォルダーから削除; 仮想フォルダーから選択項目を削除します。
- **仮想フォルダーのクリア** (`ClearVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 仮想リスト > 仮想フォルダーのクリア; 現在の仮想フォルダーをクリアします。
- **仮想フォルダーの削除** (`DeleteVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 仮想リスト > 仮想フォルダーの削除; 現在の保存済み仮想フォルダーを削除します。
- **仮想フォルダーの名前を変更** (`RenameVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 仮想リスト > 仮想フォルダーの名前を変更; 現在の仮想フォルダーの名前を変更します。
- **仮想フォルダーの複製** (`DuplicateVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 仮想リスト > 仮想フォルダーの複製; 現在の仮想フォルダーを複製します。
- **仮想フォルダーを保存** (`SaveVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 仮想リスト > 仮想フォルダーを保存; 一時的な仮想フォルダーをユーザー仮想フォルダーとして保存します。
- **仮想フォルダーを開く** (`OpenVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 仮想リスト > 仮想フォルダーを開く; 保存された仮想フォルダーを選択してタブで開きます。
- **仮想フォルダーマネージャーを開く** (`OpenVirtualFolderManager`) — keys: `{"windows":["Ctrl\u002BShift\u002BJ"],"mac":["\u2318\u002BShift\u002BJ"]}`; menu: 移動 > 仮想フォルダー; 保存済み仮想フォルダーを一覧表示し、開く、名前変更、複製、削除を行います。
- **反対側ペインの追従を切り替え** (`ToggleVirtualListFollow`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 仮想リスト > 反対側ペインの追従を切り替え; 反対側のペインが仮想リストの選択に追従するかを切り替えます。
- **新しい仮想フォルダー** (`NewVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: ; 新しいユーザー仮想フォルダーを作成します。
- **既存の仮想リストに追加** (`AddToExistingVirtualList`) — keys: `{"windows":["Shift\u002BAlt\u002BL"],"mac":["\u2318\u002BShift\u002BL"]}`; menu: ツール > 仮想リスト > 既存の仮想リストに追加; 別の既存の仮想リストに項目を追加します。
- **検索結果を仮想フォルダーとして開く** (`OpenSearchResultsAsVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 仮想リスト > 検索結果を仮想フォルダーとして開く; 検索結果を仮想フォルダーとして開きます。
- **親フォルダーをここで開く** (`OpenContainingFolderInThisPane`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 仮想リスト > 親フォルダーをここで開く; 選択した仮想項目の親フォルダーをこのペインで開きます。
- **親フォルダーを他のペインで開く** (`OpenContainingFolderInOtherPane`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 仮想リスト > 親フォルダーを他のペインで開く; 選択した仮想項目の親フォルダーを他方のペインで開きます。
- **選択内容を仮想フォルダーに追加** (`AddSelectionToVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 仮想リスト > 選択内容を仮想フォルダーに追加; 現在の選択内容を仮想フォルダーに追加します。

### 外観
- **ダーク/ライトテーマの切り替え** (`ToggleDarkLightTheme`) — keys: `{"windows":[],"mac":[]}`; menu: 表示 > テーマ > ダーク/ライトの切り替え; 
- **テーマ: システム** (`ThemeSystem`) — keys: `{"windows":[],"mac":[]}`; menu: 表示 > テーマ > システム; 
- **テーマ: ダーク** (`ThemeDark`) — keys: `{"windows":[],"mac":[]}`; menu: 表示 > テーマ > ダーク; 
- **テーマ: ライト** (`ThemeLight`) — keys: `{"windows":[],"mac":[]}`; menu: 表示 > テーマ > ライト; 

### 実行
- **カスタムコマンドを管理** (`ManageCustomCommands`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 実行 > カスタムコマンドを管理; INI インポートを含むカスタムコマンド設定を開きます。
- **コマンド履歴** (`ShowExecutionHistory`) — keys: `{"windows":["Ctrl\u002BShift\u002BH"],"mac":["Ctrl\u002BShift\u002BH"]}`; menu: ツール > コマンド履歴; 
- **フォルダーとして開く** (`OpenAsFolder`) — keys: `{"windows":["Ctrl\u002BShift\u002BEnter"],"mac":["Ctrl\u002BShift\u002BEnter"]}`; menu: ファイル > フォルダーとして開く; 選択したフォルダーまたはパッケージの内容をアクティブなペインで開きます。
- **即時実行** (`RunImmediate`) — keys: `{"windows":["Ctrl\u002BEnter"],"mac":["\u2318\u002BEnter"]}`; menu: ツール > 実行 > 即時実行; 選択したファイルをすぐに実行します (代替キー)。
- **外部ツールとして登録** (`RegisterSelectedExecutableAsExternalTool`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 実行 > 外部ツールとして登録; 選択した .exe を外部ツールとして登録します。
- **外部ツールを実行** (`RunExternalTool`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 実行 > 外部ツールを実行; 
- **外部ツールを管理** (`ManageExternalTools`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 実行 > 外部ツールを管理; 
- **実行** (`Run`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 実行 > 実行; 選択したファイルを既定の操作で実行します。
- **引数を指定して実行** (`RunWithArgs`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 実行 > 引数を指定して実行; 選択したファイルを引数を入力して実行します。
- **管理者として実行** (`RunAsAdmin`) — keys: `{"windows":[],"mac":[]}`; menu: ツール > 実行 > 管理者として実行; 選択したファイルを管理者権限で実行します (Windows)。
- **項目に入る** (`EnterItem`) — keys: `{"windows":["Enter"],"mac":["Enter"]}`; menu: ファイル > 開く; フォルダーに入るか、選択した項目を開きます。

### 検索
- **Filter by Label: Archive** (`FilterByLabel`) — keys: `{"windows":["Ctrl\u002BAlt\u002BD1","Ctrl\u002BAlt\u002BD2","Ctrl\u002BAlt\u002BD3","Ctrl\u002BAlt\u002BD4","Ctrl\u002BAlt\u002BD5","Ctrl\u002BAlt\u002BD6","Ctrl\u002BAlt\u002BD7"],"mac":["Ctrl\u002BOption\u002BD1","Ctrl\u002BOption\u002BD2","Ctrl\u002BOption\u002BD3","Ctrl\u002BOption\u002BD4","Ctrl\u002BOption\u002BD5","Ctrl\u002BOption\u002BD6","Ctrl\u002BOption\u002BD7"]}`; menu: 検索 > ラベルフィルター > Important; 指定ラベルの項目のみ表示します。もう一度実行すると解除します。
- **Filter by Label: Done** (`FilterByLabel`) — keys: `{"windows":["Ctrl\u002BAlt\u002BD1","Ctrl\u002BAlt\u002BD2","Ctrl\u002BAlt\u002BD3","Ctrl\u002BAlt\u002BD4","Ctrl\u002BAlt\u002BD5","Ctrl\u002BAlt\u002BD6","Ctrl\u002BAlt\u002BD7"],"mac":["Ctrl\u002BOption\u002BD1","Ctrl\u002BOption\u002BD2","Ctrl\u002BOption\u002BD3","Ctrl\u002BOption\u002BD4","Ctrl\u002BOption\u002BD5","Ctrl\u002BOption\u002BD6","Ctrl\u002BOption\u002BD7"]}`; menu: 検索 > ラベルフィルター > Important; 指定ラベルの項目のみ表示します。もう一度実行すると解除します。
- **Filter by Label: Important** (`FilterByLabel`) — keys: `{"windows":["Ctrl\u002BAlt\u002BD1","Ctrl\u002BAlt\u002BD2","Ctrl\u002BAlt\u002BD3","Ctrl\u002BAlt\u002BD4","Ctrl\u002BAlt\u002BD5","Ctrl\u002BAlt\u002BD6","Ctrl\u002BAlt\u002BD7"],"mac":["Ctrl\u002BOption\u002BD1","Ctrl\u002BOption\u002BD2","Ctrl\u002BOption\u002BD3","Ctrl\u002BOption\u002BD4","Ctrl\u002BOption\u002BD5","Ctrl\u002BOption\u002BD6","Ctrl\u002BOption\u002BD7"]}`; menu: 検索 > ラベルフィルター > Important; 指定ラベルの項目のみ表示します。もう一度実行すると解除します。
- **Filter by Label: Later** (`FilterByLabel`) — keys: `{"windows":["Ctrl\u002BAlt\u002BD1","Ctrl\u002BAlt\u002BD2","Ctrl\u002BAlt\u002BD3","Ctrl\u002BAlt\u002BD4","Ctrl\u002BAlt\u002BD5","Ctrl\u002BAlt\u002BD6","Ctrl\u002BAlt\u002BD7"],"mac":["Ctrl\u002BOption\u002BD1","Ctrl\u002BOption\u002BD2","Ctrl\u002BOption\u002BD3","Ctrl\u002BOption\u002BD4","Ctrl\u002BOption\u002BD5","Ctrl\u002BOption\u002BD6","Ctrl\u002BOption\u002BD7"]}`; menu: 検索 > ラベルフィルター > Important; 指定ラベルの項目のみ表示します。もう一度実行すると解除します。
- **Filter by Label: Reference** (`FilterByLabel`) — keys: `{"windows":["Ctrl\u002BAlt\u002BD1","Ctrl\u002BAlt\u002BD2","Ctrl\u002BAlt\u002BD3","Ctrl\u002BAlt\u002BD4","Ctrl\u002BAlt\u002BD5","Ctrl\u002BAlt\u002BD6","Ctrl\u002BAlt\u002BD7"],"mac":["Ctrl\u002BOption\u002BD1","Ctrl\u002BOption\u002BD2","Ctrl\u002BOption\u002BD3","Ctrl\u002BOption\u002BD4","Ctrl\u002BOption\u002BD5","Ctrl\u002BOption\u002BD6","Ctrl\u002BOption\u002BD7"]}`; menu: 検索 > ラベルフィルター > Important; 指定ラベルの項目のみ表示します。もう一度実行すると解除します。
- **Filter by Label: Review** (`FilterByLabel`) — keys: `{"windows":["Ctrl\u002BAlt\u002BD1","Ctrl\u002BAlt\u002BD2","Ctrl\u002BAlt\u002BD3","Ctrl\u002BAlt\u002BD4","Ctrl\u002BAlt\u002BD5","Ctrl\u002BAlt\u002BD6","Ctrl\u002BAlt\u002BD7"],"mac":["Ctrl\u002BOption\u002BD1","Ctrl\u002BOption\u002BD2","Ctrl\u002BOption\u002BD3","Ctrl\u002BOption\u002BD4","Ctrl\u002BOption\u002BD5","Ctrl\u002BOption\u002BD6","Ctrl\u002BOption\u002BD7"]}`; menu: 検索 > ラベルフィルター > Important; 指定ラベルの項目のみ表示します。もう一度実行すると解除します。
- **Filter by Label: Waiting** (`FilterByLabel`) — keys: `{"windows":["Ctrl\u002BAlt\u002BD1","Ctrl\u002BAlt\u002BD2","Ctrl\u002BAlt\u002BD3","Ctrl\u002BAlt\u002BD4","Ctrl\u002BAlt\u002BD5","Ctrl\u002BAlt\u002BD6","Ctrl\u002BAlt\u002BD7"],"mac":["Ctrl\u002BOption\u002BD1","Ctrl\u002BOption\u002BD2","Ctrl\u002BOption\u002BD3","Ctrl\u002BOption\u002BD4","Ctrl\u002BOption\u002BD5","Ctrl\u002BOption\u002BD6","Ctrl\u002BOption\u002BD7"]}`; menu: 検索 > ラベルフィルター > Important; 指定ラベルの項目のみ表示します。もう一度実行すると解除します。
- **Grep ウィンドウを開く** (`OpenGrepWindow`) — keys: `{"windows":[],"mac":[]}`; menu: 検索 > Grep; Grep 検索ウィンドウを開きます。
- **SFIS マネージャーを表示** (`ShowSfisManager`) — keys: `{"windows":[],"mac":[]}`; menu: ; SFIS のサービス、マウント、ボリューム、設定、ログの状態を開きます。
- **スマートフォルダーを更新** (`RefreshSmartFolder`) — keys: `{"windows":[],"mac":[]}`; menu: 編集 > スマートフォルダーを更新; アクティブなスマートフォルダーの保存済みクエリを再実行します。スマートフォルダータブで「アクティブなペインを更新」を使ったときも自動実行されます。
- **ラベルでフィルター** (`FilterByLabel`) — keys: `{"windows":["Ctrl\u002BAlt\u002BD1","Ctrl\u002BAlt\u002BD2","Ctrl\u002BAlt\u002BD3","Ctrl\u002BAlt\u002BD4","Ctrl\u002BAlt\u002BD5","Ctrl\u002BAlt\u002BD6","Ctrl\u002BAlt\u002BD7"],"mac":["Ctrl\u002BOption\u002BD1","Ctrl\u002BOption\u002BD2","Ctrl\u002BOption\u002BD3","Ctrl\u002BOption\u002BD4","Ctrl\u002BOption\u002BD5","Ctrl\u002BOption\u002BD6","Ctrl\u002BOption\u002BD7"]}`; menu: 検索 > ラベルフィルター > Important; 指定ラベルの項目のみ表示します。もう一度実行すると解除します。
- **ラベルフィルターをクリア** (`ClearLabelFilter`) — keys: `{"windows":[],"mac":[]}`; menu: 検索 > ラベルフィルター > ラベルフィルターをクリア; ペインのラベルフィルターをクリアします。
- **再帰検索** (`ShowRecursiveSearch`) — keys: `{"windows":["Ctrl\u002BF"],"mac":["\u2318\u002BF"]}`; menu: 検索 > 再帰検索; 現在のフォルダー配下を再帰的に検索します。
- **新しいスマート フォルダー...** (`CreateSmartFolder`) — keys: `{"windows":[],"mac":[]}`; menu: 編集 > 新しいスマート フォルダー...; アクティブなフォルダーで複数のファイル条件を組み合わせてスマートフォルダーを作成します。
- **検索をスマートフォルダーとして保存...** (`SaveSmartFolder`) — keys: `{"windows":["Ctrl\u002BShift\u002BS"],"mac":["\u2318\u002BShift\u002BS"]}`; menu: 編集 > 検索をスマートフォルダーとして保存...; 現在の検索条件を、動的に更新されるスマートフォルダーとして保存します。
- **永続フィルターのスコープの切り替え** (`TogglePersistentFilterScope`) — keys: `{"windows":[],"mac":[]}`; menu: 検索 > 永続フィルターのスコープの切り替え; 永続フィルターの範囲を「ファイルのみ」と「ファイル + フォルダー」で切り替えます。
- **永続フィルターの編集** (`EditPersistentFilter`) — keys: `{"windows":[";"],"mac":[";"]}`; menu: 検索 > 永続フィルターの編集; 常時表示の永続フィルターボックスにフォーカスします (Enter で適用、Esc でキャンセル)。
- **永続フィルターをクリア** (`ClearPersistentFilter`) — keys: `{"windows":["Ctrl\u002B;"],"mac":["Ctrl\u002B;"]}`; menu: 検索 > 永続フィルターをクリア; ペインから永続フィルターを解除します。
- **永続フィルターを設定: ファイル + フォルダー** (`SetPersistentFilterFilesAndDirectories`) — keys: `{"windows":[],"mac":[]}`; menu: 検索 > 永続フィルター: ファイル + フォルダー; 永続フィルターをファイルとフォルダーの両方に適用します。
- **永続フィルターを設定: ファイルのみ** (`SetPersistentFilterFilesOnly`) — keys: `{"windows":[],"mac":[]}`; menu: 検索 > 永続フィルター: ファイルのみ; ファイルのフィルター中もフォルダーを表示したままにします。

### 表示
- **アクティブなペインを更新** (`RefreshActive`) — keys: `{"windows":["Ctrl\u002BR"],"mac":["\u2318\u002BR"]}`; menu: 表示 > 更新; 現在のフォルダーの一覧を再読み込みします。
- **インライン FZF の切り替え** (`ToggleInlineFzf`) — keys: `{"windows":["?","/"],"mac":["?","/"]}`; menu: 表示 > インライン FZF の切り替え; ファイルリストのインラインフィルターを切り替えます。
- **サイズで並べ替え** (`SortBySize`) — keys: `{"windows":[],"mac":[]}`; menu: 表示 > 並べ替え > サイズ別; アクティブなファイルリストをサイズで並べ替えます。
- **パス編集の切り替え** (`TogglePathEdit`) — keys: `{"windows":["Ctrl\u002BL"],"mac":["\u2318\u002BL"]}`; menu: 表示 > パス編集の切り替え; アドレスバーでのパス編集を切り替えます。
- **フラットビューの切り替え** (`ToggleFlatView`) — keys: `{"windows":["Shift\u002BF"],"mac":["Shift\u002BF"]}`; menu: ; アクティブなフォルダーのフラットな再帰ビューを切り替えます。
- **ラベルで並べ替え** (`SortByLabel`) — keys: `{"windows":[],"mac":[]}`; menu: 表示 > 並べ替え > ラベル別; アクティブなファイルリストをカラーラベルで並べ替えます。
- **並べ替え** (`SortCycle`) — keys: `{"windows":["S"],"mac":["S"]}`; menu: 表示 > 並べ替え > 並べ替え; アクティブなファイルリストの並べ替えキーを順に切り替えます。
- **並べ替えを反転** (`SortToggleDescending`) — keys: `{"windows":["Shift\u002BS"],"mac":["Shift\u002BS"]}`; menu: 表示 > 並べ替え > 並べ替えを反転; アクティブなファイルリストの並べ替え方向を反転します。
- **他のペインにフォーカス** (`FocusOtherPane`) — keys: `{"windows":["Tab"],"mac":["Tab"]}`; menu: 表示 > 他のペインにフォーカス; キーボードフォーカスを左右のペインで切り替えます。
- **保留中の変更を適用** (`ApplyPendingChanges`) — keys: `{"windows":[],"mac":[]}`; menu: 表示 > 保留中の変更を適用; 保留中のフォルダー差分更新を適用します。
- **元の順序で並べ替え** (`SortOriginalOrder`) — keys: `{"windows":[],"mac":[]}`; menu: 表示 > 並べ替え > 元の順序; アクティブなファイルリストを元の取得順で並べ替えます。
- **名前で並べ替え** (`SortByName`) — keys: `{"windows":[],"mac":[]}`; menu: 表示 > 並べ替え > 名前で; アクティブなファイルリストを名前で並べ替えます。
- **拡張子で並べ替え** (`SortByExtension`) — keys: `{"windows":[],"mac":[]}`; menu: 表示 > 並べ替え > 拡張子別; アクティブなファイルリストを拡張子で並べ替えます。
- **更新** (`Refresh`) — keys: `{"windows":[],"mac":[]}`; menu: ; 現在のビューを更新します。
- **更新日時で並べ替え** (`SortByModifiedTime`) — keys: `{"windows":[],"mac":[]}`; menu: 表示 > 並べ替え > 更新日時別; アクティブなファイルリストを更新日時で並べ替えます。
- **無視した項目を表示** (`ToggleShowIgnoredItems`) — keys: `{"windows":[],"mac":[]}`; menu: 表示 > 無視した項目を表示; 
- **表示を切り替え (詳細/グリッド/リッチ)** (`TogglePaneGrid`) — keys: `{"windows":["Ctrl\u002BShift\u002BG"],"mac":["Ctrl\u002BShift\u002BG"]}`; menu: 表示 > サムネイルグリッドの切り替え; アクティブなペインの表示を切り替えます: 詳細リスト -> サムネイルグリッド -> リッチリスト。
- **表示無視ルール** (`ManageDisplayIgnoreRules`) — keys: `{"windows":[],"mac":[]}`; menu: 表示 > 無視ルールを表示...; 
- **選択した名前を無視** (`IgnoreSelectedName`) — keys: `{"windows":[],"mac":[]}`; menu: 表示 > 選択した名前を無視; 
- **選択した拡張子を無視** (`IgnoreSelectedExtension`) — keys: `{"windows":[],"mac":[]}`; menu: 表示 > 選択した拡張子を無視; 

### 診断
- **AI デバッグログの切り替え** (`ToggleAiDebugLog`) — keys: `{"windows":[],"mac":[]}`; menu: ヘルプ > 診断 > AI デバッグログの切り替え; 
- **すべてのデバッグログを無効化** (`DisableAllDebugLogs`) — keys: `{"windows":[],"mac":[]}`; menu: ヘルプ > 診断 > すべてのデバッグログを無効化; 
- **キーデバッグログの切り替え** (`ToggleKeyDebugLog`) — keys: `{"windows":[],"mac":[]}`; menu: ヘルプ > 診断 > キーデバッグログの切り替え; 
- **コマンドログの切り替え** (`ToggleCommandLog`) — keys: `{"windows":[],"mac":[]}`; menu: ヘルプ > 診断 > コマンドログの切り替え; 
- **シェル統合を確認** (`CheckShellIntegration`) — keys: `{"windows":[],"mac":[]}`; menu: ヘルプ > 診断 > シェル統合を確認; Windows シェルコンテキストメニューの代理プロセス診断を実行します。
- **パフォーマンスログの切り替え** (`TogglePerformanceLog`) — keys: `{"windows":[],"mac":[]}`; menu: ヘルプ > 診断 > パフォーマンスログの切り替え; 
- **ペインのデバッグログの切り替え** (`TogglePaneDebugLog`) — keys: `{"windows":[],"mac":[]}`; menu: ヘルプ > 診断 > ペインのデバッグログの切り替え; 

### 選択
- **すべてのファイルをマーク** (`MarkAllFilesToggle`) — keys: `{"windows":["A"],"mac":["A"]}`; menu: 編集 > 選択 > すべてのファイルをマーク; フィルター済みのすべてのファイルのマークを切り替えます。
- **すべての項目をマーク** (`MarkAllIncludingDirectoriesToggle`) — keys: `{"windows":["Shift\u002BA"],"mac":["Shift\u002BA"]}`; menu: 編集 > 選択 > すべての項目をマーク; フィルター済みのすべてのファイルとフォルダーのマークを切り替えます。
- **すべてマーク** (`MarkAll`) — keys: `{"windows":["Ctrl\u002BA"],"mac":["Ctrl\u002BA"]}`; menu: 編集 > 選択 > すべてマーク; アクティブなペインのフィルター済み項目をすべてマークします。
- **すべてマーク解除** (`UnmarkAll`) — keys: `{"windows":["Ctrl\u002BShift\u002BA"],"mac":["Ctrl\u002BShift\u002BA"]}`; menu: 編集 > 選択 > すべてマーク解除; アクティブなペインのフィルター済み項目のマークをすべて解除します。
- **マークの切り替え** (`ToggleMark`) — keys: `{"windows":["Space","Ctrl\u002BSpace","Insert"],"mac":["Space","Ctrl\u002BSpace","Insert"]}`; menu: 編集 > 選択 > マークの切り替え; 一括操作のために現在の行のマークを付け外しします。
- **マークを反転** (`InvertMarks`) — keys: `{"windows":["Alt\u002BA"],"mac":["Option\u002BA"]}`; menu: 編集 > 選択 > マークを反転; アクティブなペインのフィルター済み項目のマークを反転します。
- **選択** (`ShowFuzzySelect`) — keys: `{"windows":["F"],"mac":["F"]}`; menu: 検索 > 選択; 現在のフォルダー配下のファイルを選択します。

## トピック

### Git 連携

InsightFlow は Git リポジトリの状態確認や基本操作を、専用ウィンドウから行えます。

## Git ウィンドウを開く

- `G`（ファイル一覧にフォーカス時）、またはメニューバーの **Git → Git Window**
- リポジトリ一覧は **Git → Repository List**

## 主な操作（Git メニュー）

- **Register Repository / Scan Folder for Repositories** — リポジトリの登録・フォルダ内スキャン
- **Git Diff / Git Log / Git Commit** — 差分・履歴・コミット
- **Git Pull / Git Push** — 取得・送信
- **Git Stage Toggle / Stage All / Unstage All** — ステージング操作

## Git スコープ

現在のフォルダが属するリポジトリの状態を、ファイル一覧上で確認できます。

- **Git → Show Git Scope** — 表示切り替え
- **Git → Refresh Git Scope**（`Ctrl+G`）— 最新状態に更新

Git ウィンドウの動作に関する設定は[設定](settings.md)の **Git** タブで調整できます。

[← マニュアルトップへ戻る](index.md)

### InsightFlow マニュアル

InsightFlow の使い方をまとめたマニュアルです（試験公開中）。はじめて使う方は、上から順に読むと基本操作が身につきます。

## はじめる

- [はじめに（インストール・起動）](getting-started.md)
- [操作の基本（デュアルペイン・タブ・メニューバー）](navigation.md)
- [デフォルトキーバインド一覧（キーから機能を探す）](default-keybindings.md)

## 基本操作

- [ファイル操作（コピー・移動・リネーム・削除）](file-operations.md)
- [選択とマーク・ラベル](selection-marks.md)
- [表示・プレビュー（並び替え・テーマ）](view-preview.md)

## 探す・移動する

- [ファイル検索（ファイル名）](search.md)
- [grep（ファイルの中身を検索）](grep.md)
- [ブックマーク・お気に入り・履歴](bookmarks-favorites.md)

## ファイルを扱う

- [アーカイブ（ZIP / 7z / tar.zst）](archives.md)
- [フォルダ同期 (Folder Sync)](folder-sync.md)
- [SCOPY 高速コピー](scopy-copy.md)
- [シェルフ（一時置き場）](shelf.md)
- [仮想フォルダ・仮想リスト](virtual-folders.md)

## ツール・連携

- [外部ツール・コマンド実行](external-tools.md)
- [ターミナル](terminal.md)
- [Git 連携](git.md)
- [ディスク使用量分析](disk-usage.md)
- [ジョブパネル（バックグラウンド処理）](jobs-panel.md)
- [リモートピア接続（実験的）](remote.md)

## カスタマイズ・リファレンス

- [右クリックメニューのカスタマイズ](context-menus.md)
- [デフォルトキーバインド一覧](default-keybindings.md)
- [キーボードショートカット](keyboard-shortcuts.md)
- [設定](settings.md)

---

このページはお試し公開です。内容は今後変わることがあります。

### SCOPY 高速コピー

InsightFlow はコピー・削除のバックエンドとして SCOPY（ネイティブコピーエンジン）を選択できます。

## 設定方法

1. メニューバーの **Tools → Settings** で設定を開き、**Background Jobs** タブを選びます。
2. **Copy engine** を `Scopy` に変更します。
3. 「SCOPY 高速コピー設定...」ボタンから、既定のコピーモードなどを調整できます。

## コピーモード

SCOPY を使ったコピーでは、実行時に **高速 (Speed)** か **安全 (Safe)** を選べます。

- **⚡ 高速 (Speed)**: コピー後の検証を省略し、最速のパスで実行します。通常のファイルツリーであれば、これで十分です。既存ファイルは上書きせずスキップされ、シンボリックリンク・ハードリンクは簡略化されます。
- **🛡 安全 (Safe)**: サイズと更新時刻でコピー後に検証します。確実さを優先するため、Speed よりわずかに時間がかかります。

初回コピー時に確認ダイアログが表示されます。「今後は確認せず、選んだモードを使う」にチェックすると、次回以降は聞かれません。

## 詳細設定

「SCOPY 高速コピー設定」ダイアログでは、以下も調整できます。

- 検証レベル（自動 / なし / サイズ / サイズ+更新時刻 / ハッシュ）
- コピーワーカー数・検証ワーカー数（0 = 自動）

[← マニュアルトップへ戻る](index.md)

### grep（ファイルの中身を検索）

[ファイル検索](search.md)がファイル名を探すのに対し、grep は**ファイルの中身（テキスト）**を横断的に検索します。

## 開く

- メニューバーの **Search → Grep**
- `Ctrl+P` でコマンドパレットを開き、「**Open Grep Window**」と入力して実行

## 使い方

1. Grep ウィンドウで、検索対象のフォルダと検索文字列（正規表現も可）を指定します。
2. 拡張子などで対象ファイルを絞り込めます。
3. 実行すると、一致した行がファイルごとに一覧表示されます。
4. 結果の行をたどって、該当ファイルを開けます。

## 補足

grep の検索バックエンドや既定の除外設定は、[設定](settings.md)の **Grep & History** タブで調整できます。検索結果は仮想フォルダとして開くこともできます（[仮想フォルダ](virtual-folders.md)）。

[← マニュアルトップへ戻る](index.md)

### はじめに

InsightFlow は Windows / macOS 向けのファイルマネージャーです。

## インストール

1. [ダウンロードページ](https://github.com/yahright/downloads/releases)から最新の ZIP を取得します。
2. **新規の空フォルダ**に展開してください。既存の InsightFlow フォルダに上書きすると、新旧ファイルが混在して起動できなくなることがあります。
3. `InsightFlow.exe` を実行します。

初回起動時に Windows SmartScreen の警告が出ることがあります。「詳細情報」→「実行」で起動できます（未署名ビルドのため）。

## アップデート

**Help → Check for Updates** から最新版の確認・適用ができます。

[← マニュアルトップへ戻る](index.md)

### アーカイブ（ZIP / 7z / tar.zst）

ZIP・7z アーカイブはフォルダのように開いて中身を閲覧できます。

## 閲覧

ZIP または 7z ファイルをクリックすると、仮想フォルダとして中身が開きます。タブには `[ZIP]` / `[7z]` のバッジが付きます。中のファイルをプレビューすることもできます。

## 展開

アーカイブを右クリック、またはメニューバーの **File → Archive** から、以下を選べます。

- **Extract Here** — 同じ場所に展開
- **Extract To...** — 展開先を指定
- **Extract to Archive Folder** — アーカイブ名のサブフォルダを作って展開

展開時に既存ファイルと衝突した場合は、スキップ・上書き・リネーム・新しい方のみ、から選べます。

## 圧縮

ファイル/フォルダを選択して右クリック、またはメニューバーの **File → Archive** から圧縮できます。

- **Compress to ZIP** / **Compress to 7z** / **Compress to tar.zst** — 形式を指定して即圧縮
- **Compress...** — 圧縮率などの詳細を「Advanced Compress」ダイアログで指定

## 補足

- tar.zst は作成・展開のみ対応で、中身をフォルダのように閲覧することはできません。
- 7z・zstd 圧縮は外部ツール連携が必要です。未導入の場合は ZIP のみ利用できます。
- アーカイブの中身は読み取り専用です（中のファイルを直接編集して保存し直す機能はありません）。
- 既定の圧縮形式やパスは **設定 → Archives** タブで変更できます。

[← マニュアルトップへ戻る](index.md)

### キーボードショートカット

機能は、ウィンドウ上部の**メニューバー**（[操作の基本](navigation.md)を参照）、`Ctrl+P` の**コマンドパレット**、または直接のショートカットから呼び出せます。メニュー項目の右側には対応するショートカットが表示されるので、よく使う操作のキーを覚える手がかりになります。

初期状態で使えるキーを機能別に探したい場合は、先に [デフォルトキーバインド一覧](default-keybindings.md) を見ると全体像をつかみやすいです。

## コマンドヘルプ

`Ctrl+H`（**Help → Command Help**）で、すべてのコマンドとキーボードショートカットの一覧を表示するコマンドヘルプ画面を開けます。コマンド名で絞り込み検索もできます。

## よく使うショートカット

単一キー（`Ctrl` などを押さない）のショートカットは、ファイル一覧にフォーカスがあるときに機能します。

### 基本操作

| キー | 動作 |
|---|---|
| `C` / `F5` | 反対のペインへコピー |
| `M` / `F6` | 反対のペインへ移動 |
| `K` / `F7` | 新しいフォルダを作成 |
| `R` | リネーム（`Shift+R` で連続リネーム） |
| `D` / `Delete` / `F8` | ごみ箱へ移動（`Shift+D` / `Shift+Delete` で完全削除） |
| `Space` / `Insert` | マーク（複数選択）の切り替え |
| `Enter` | 開く（フォルダは移動、ファイルは実行） |
| `U` / `Alt+↑` | 親フォルダへ |
| `Alt+←` / `Alt+→` | 戻る / 進む |
| `Tab` | もう一方のペインへフォーカス |

### 機能を開く

| キー | 動作 |
|---|---|
| `Ctrl+F` | ファイル検索 |
| `Ctrl+P` | コマンドパレット |
| `Ctrl+H` | コマンドヘルプ |
| `Ctrl+U` | ディスク使用量分析 |
| `Ctrl+J` | ジョブパネル |
| `Shift+J` | ジャンプ履歴 |
| `Ctrl+,` | 設定 |
| `` Ctrl+` `` | ターミナル |
| `G` | Git ウィンドウ |
| `F3` | プレビュー切り替え |

## カスタマイズ

キーボードショートカットは **設定 → Key Bindings** タブから変更できます。ファンクションキーの割り当ては **Function Keys** タブ、グローバルホットキー（アプリ非フォーカス時）は **Global HotKey** タブで設定します。

## ファンクションキーを設定する

画面下部のファンクションキーバーには、`F1` から `F12` に割り当てた操作を表示できます。初期状態ではコピーや移動などが入っていますが、自分でよく使う操作に変えられます。

### 設定画面を開く

1. **Tools → Settings** を開きます。ショートカットは `Ctrl+,` です。
2. 左側で **Input** を選びます。
3. **Function Keys** タブを開きます。

一覧には、次のような行が表示されます。

| 列 | 意味 |
|---|---|
| Layer | 通常の `Fキー`、`Shift+Fキー`、`Ctrl+Fキー` の区分 |
| Key | どのキーか。例: `F5` |
| Label | 画面下部に表示する短い名前 |
| Command Type | 割り当てている種類 |
| Command | 実行される内容 |
| Change | 割り当てる操作を変更 |
| Edit | 表示名だけ変更 |
| Clear | 割り当てを消す |

### 既存の操作を割り当てる

1. 変更したい行の **Change** を押します。
2. **Assign Function Key** 画面で、割り当てたい操作を選びます。
3. 上部の検索欄に `copy`、`delete`、`grep` などと入力すると絞り込めます。
4. **OK** を押します。
5. 必要なら **Edit** で表示名を短くします。例: `Copy`、`Grep`
6. 設定画面の **Save** を押します。

### 外部ツールやカスタムコマンドを割り当てる

Functionキーには、標準機能だけでなく、登録した外部ツールやカスタムコマンドも割り当てられます。

1. 先に [外部ツール・コマンド実行](external-tools.md) で外部ツールまたはカスタムコマンドを登録します。
2. **Settings → Input → Function Keys** を開きます。
3. 変更したい `Fキー` の **Change** を押します。
4. 一覧から **External Tools** または **Custom Commands** の項目を選びます。
5. **OK** を押し、設定画面の **Save** を押します。

### その場で簡単なコマンドを割り当てる

一度だけ簡単に登録したい場合は、**Assign Function Key** 画面で **Inline** を使えます。

例: 操作中フォルダを VS Code で開く場合

```text
code "{active.path}"
```

Inline では外部ツールと同じ `{target}` や `{active.path}` 形式の置き換え文字を使います。あとから何度も使うなら、Inline よりも外部ツールとして登録しておく方が管理しやすくなります。

### 下部のファンクションキーバーを表示する

下部に `F5 Copy` などのバーが見えない場合は、**Settings → View** の **Show function key bar** をオンにして保存します。

### 迷ったときの目安

| やりたいこと | 選ぶもの |
|---|---|
| コピー、移動、削除など標準機能を割り当てたい | Built-in Commands |
| VS Code や比較ツールを起動したい | External Tools |
| 自分で作ったコマンドを割り当てたい | Custom Commands |
| 1行だけの簡単な起動コマンドを直接書きたい | Inline |

[← マニュアルトップへ戻る](index.md)

### シェルフ（一時置き場）

シェルフは、あちこちのフォルダから集めたファイルを一時的にためておく置き場です。離れた複数の場所からファイルを拾い集めて、まとめて別のフォルダへコピー/移動したいときに便利です。

## 使い方

1. ファイルにカーソルを合わせ（または[マーク](selection-marks.md)して）、`V` でシェルフに追加します。
2. 別のフォルダに移動して、同じように必要なファイルを追加していきます。
3. コピー/移動先のフォルダをアクティブなペインに開きます。
4. `Shift+V` でシェルフの中身をそのフォルダへコピー、`Ctrl+V` で移動します。

## キーとメニュー

| 操作 | キー | メニュー |
|---|---|---|
| シェルフに追加 | `V` | Tools → Shelf → Add Selection to Shelf |
| シェルフパネルの表示切り替え | `Ctrl+Shift+V` | Tools → Shelf → Show Shelf |
| アクティブペインへコピー | `Shift+V` | Tools → Shelf → Copy Shelf to Active Pane |
| アクティブペインへ移動 | `Ctrl+V` | Tools → Shelf → Move Shelf to Active Pane |
| シェルフを空にする | — | Tools → Shelf → Clear Shelf |

画面下部のステータスバーにあるシェルフのバッジからも、中身の確認やペインへのドラッグができます。

[← マニュアルトップへ戻る](index.md)

### ジョブパネル（バックグラウンド処理）

コピー・移動・削除・検索・ディスク使用量分析などの処理は、ジョブパネルで一括管理できます。

## メニューから開く

- メニューバーの **Tools → Jobs → Show Jobs**
- 画面下部のステータスバーにある **Jobs バッジ**をクリック
- `Ctrl+P` でコマンドパレットを開き、「**Show Jobs**」と入力して実行

## できること

- 実行中のジョブの状態（実行中・待機中・一時停止・失敗・完了・キャンセル）を一覧表示
- 個々のジョブを選択すると、詳細な進捗・処理中のパス・成功/失敗タブが確認できます
- **Pause All / Resume All / Cancel All** — 全ジョブを一括操作
- 個別ジョブに対して **一時停止/再開**、**キャンセル**、**失敗分の再試行**
- **Clear Completed** — 完了したジョブを一覧から消去
- **Export Failed CSV** — 失敗した項目のパスを CSV で書き出し

## デタッチされたジョブ

検索やディスク使用量分析のダイアログを閉じても、処理自体はジョブパネルに残り「Detached」状態になります。後からジョブパネルを開いて結果を再表示できます。

## 補足

ジョブパネルの内容はアプリのセッション中のみ保持されます。アプリを再起動すると、実行中でなかった完了済みジョブの履歴は引き継がれません。

[← マニュアルトップへ戻る](index.md)

### ターミナル

現在のフォルダをカレントディレクトリにして、ターミナルを開けます。

| 操作 | キー | メニュー |
|---|---|---|
| ターミナルを開く | `` Ctrl+` `` | Tools → Terminal → Open Terminal |
| このフォルダでターミナル | — | Tools → Terminal → Open Terminal Here |
| 管理者としてターミナル | — | Tools → Terminal → Open Terminal as Admin |
| このフォルダで管理者ターミナル | — | Tools → Terminal → Open Terminal Here as Admin |
| 反対ペインのフォルダでターミナル | `` Ctrl+Shift+` `` | Tools → Terminal → Open Terminal Other Pane |

使用するターミナル（シェル）の設定は[設定](settings.md)の **Terminal** タブで変更できます。

[← マニュアルトップへ戻る](index.md)

### ディスク使用量分析

フォルダやドライブをスキャンして、何が容量を占めているかを可視化します。`Ctrl+U` で開けます。

## メニューから開く

- メニューバーの **Tools → Disk Usage**
- フォルダを右クリック → **Disk Usage**
- `Ctrl+P` でコマンドパレットを開き、「**Disk Usage Raw Table**」と入力して実行

## 使い方

1. `Ctrl+U`、または上記のいずれかの方法で開きます。
2. スキャンするフォルダ（またはドライブ）を選びます。データ取得方法は自動選択されます（NTFS MFT → SFIS 索引 → 通常のフォルダ走査、の優先順）。
3. 結果は複数のタブで確認できます。
   - **Heavy Hitters** — 容量の大きいファイル・フォルダを一覧
   - **Folder Tree** — フォルダ階層ごとのサイズ
   - **Extensions** — 拡張子ごとの集計
   - **Cleanup Explorer** — 掃除向けのフィルタ絞り込みと削除

## Cleanup Explorer での掃除

1. **Cleanup Explorer** タブを開きます。
2. フィルタを入力します（例: `ext:.obj;.pdb` や `path:\bin\`）。よく使うプリセット（VS ビルド成果物、Node の生成物、ログなど）も選べます。
3. 絞り込まれた項目を確認し、選択して削除します。

## 補足

- NTFS MFT を使った高速スキャンは Windows 限定です。macOS では SFIS または通常スキャンにフォールバックします。
- Cleanup Explorer は取得済みのスキャン結果に対してフィルタをかける仕組みで、フィルタ変更のたびにファイルシステムを再スキャンするわけではありません。
- 削除は元に戻せません（Windows ではごみ箱経由になります）。フィルタで絞り込んだ結果がそのまま削除対象になるので、削除前に一覧をよく確認してください。

[← マニュアルトップへ戻る](index.md)

### デフォルトキーバインド一覧

InsightFlow を初期設定のまま使うときに、キーボードから呼び出せる機能の一覧です。

表は Windows / Linux のキー表記です。macOS では一部の `Ctrl` が `Command` として表示されます。単独キー（`C`、`M`、`R` など）は、ファイル一覧にフォーカスがあるときに動きます。キー設定を変更したあとは、この表ではなく `Ctrl+H` のコマンドヘルプ、または **Settings → Input → Key Bindings** で現在の設定を確認してください。

## まず覚えるキー

| キー | 機能 | 何ができるか | 詳細 |
|---|---|---|---|
| `C` / `F5` | コピー | 選択中、またはマークした項目を反対側のペインへコピーします。 | [ファイル操作](file-operations.md) |
| `M` / `F6` | 移動 | 選択中、またはマークした項目を反対側のペインへ移動します。 | [ファイル操作](file-operations.md) |
| `K` / `F7` | フォルダ作成 | 現在のフォルダに新しいフォルダを作ります。 | [ファイル操作](file-operations.md) |
| `R` | リネーム | 選択中の項目の名前を変更します。 | [ファイル操作](file-operations.md) |
| `Shift+R` | 連続リネーム | 複数の項目を続けて名前変更します。 | [ファイル操作](file-operations.md) |
| `D` / `Delete` / `F8` | 削除 | 選択中、またはマークした項目を削除します。 | [ファイル操作](file-operations.md) |
| `Shift+D` / `Shift+Delete` | 完全削除 | ごみ箱を使わずに削除します。慎重に使ってください。 | [ファイル操作](file-operations.md) |
| `Space` / `Insert` | マーク切り替え | 複数のファイルをまとめて操作するために印を付けます。 | [選択とマーク](selection-marks.md) |
| `Enter` | 開く | フォルダなら移動、ファイルなら既定アプリで開きます。 | [操作の基本](navigation.md) |
| `Tab` | 反対ペインへ移動 | 左右のペインのフォーカスを切り替えます。 | [操作の基本](navigation.md) |

## ファイル操作

| キー | 機能 | 何ができるか | 詳細 |
|---|---|---|---|
| `E` | テキストエディタで開く | 選択中のファイルをテキストエディタで開きます。 | [外部ツール・コマンド実行](external-tools.md) |
| `Shift+E` | テキストファイル作成 | 現在のフォルダに新しいテキストファイルを作ります。 | [ファイル操作](file-operations.md) |
| `Y` | パスをコピー | 選択中の項目のパスをクリップボードへコピーします。 | [選択とマーク](selection-marks.md) |
| `Shift+Y` | マーク項目のパスをコピー | マークした項目のパスをまとめてコピーします。 | [選択とマーク](selection-marks.md) |
| `Ctrl+Y` | 名前をコピー | 選択中の項目の名前だけをコピーします。 | [選択とマーク](selection-marks.md) |
| `Alt+Enter` | プロパティ | OS のプロパティ画面を開きます。 | [操作の基本](navigation.md) |
| `Ctrl+Shift+Enter` | フォルダとして開く | 選択中の場所をフォルダとして開きます。 | [操作の基本](navigation.md) |
| `Ctrl+Enter` | 即時実行 | 入力済みのコマンドをすぐ実行します。 | [外部ツール・コマンド実行](external-tools.md) |
| `Z` | InsightFlow の右クリックメニュー | ファイル一覧用のコンテキストメニューを開きます。 | [右クリックメニュー](context-menus.md) |
| `Shift+Z` | OS の右クリックメニュー | Windows など OS 標準のコンテキストメニューを開きます。 | [右クリックメニュー](context-menus.md) |

## 移動・履歴・タブ

| キー | 機能 | 何ができるか | 詳細 |
|---|---|---|---|
| `U` / `Alt+↑` | 親フォルダへ | 1つ上のフォルダへ移動します。 | [操作の基本](navigation.md) |
| `\` | ルートへ | ドライブやルート位置へ移動します。 | [操作の基本](navigation.md) |
| `Alt+←` / `Ctrl+Shift+←` | 戻る | ペインの移動履歴を戻ります。 | [操作の基本](navigation.md) |
| `Alt+→` / `Ctrl+Shift+→` | 進む | ペインの移動履歴を進みます。 | [操作の基本](navigation.md) |
| `L` | 場所ランチャー | パスや場所を選んで移動する画面を開きます。 | [操作の基本](navigation.md) |
| `Ctrl+L` | パス編集 | アドレスバーのパスを直接編集します。 | [操作の基本](navigation.md) |
| `H` | 履歴 | 訪問履歴を開きます。 | [ブックマーク・お気に入り・履歴](bookmarks-favorites.md) |
| `Shift+J` | ジャンプ履歴 | 最近訪れた場所を検索して移動します。 | [ブックマーク・お気に入り・履歴](bookmarks-favorites.md) |
| `O` | 反対ペインの場所へ移動 | アクティブペインを反対ペインと同じ場所にします。 | [操作の基本](navigation.md) |
| `Shift+O` | 反対ペインをこちらへ合わせる | 反対ペインをアクティブペインと同じ場所にします。 | [操作の基本](navigation.md) |
| `Ctrl+←` | こちらを反対ペインへ同期 | アクティブペインの場所を反対ペインへ合わせます。 | [操作の基本](navigation.md) |
| `Ctrl+→` | 反対ペインをこちらへ同期 | 反対ペインの場所をアクティブペインへ合わせます。 | [操作の基本](navigation.md) |
| `Ctrl+T` | 新規タブ | アクティブペインに新しいタブを開きます。 | [操作の基本](navigation.md) |
| `Ctrl+W` | タブを閉じる | 現在のタブを閉じます。 | [操作の基本](navigation.md) |
| `Ctrl+Tab` | 次のタブ | 次のタブへ切り替えます。 | [操作の基本](navigation.md) |
| `Ctrl+Shift+Tab` | 前のタブ | 前のタブへ切り替えます。 | [操作の基本](navigation.md) |

## カーソル移動・並び替え

| キー | 機能 | 何ができるか | 詳細 |
|---|---|---|---|
| `N` | 下へ移動 | 一覧の次の項目へ移動します。 | [操作の基本](navigation.md) |
| `P` | 上へ移動 | 一覧の前の項目へ移動します。 | [操作の基本](navigation.md) |
| `.` / `PageDown` | ページ下へ | 一覧を1ページ下へ移動します。 | [操作の基本](navigation.md) |
| `,` / `PageUp` | ページ上へ | 一覧を1ページ上へ移動します。 | [操作の基本](navigation.md) |
| `Ctrl+Home` / `Ctrl+↑` | 先頭へ | 一覧の先頭へ移動します。 | [操作の基本](navigation.md) |
| `Ctrl+End` / `Ctrl+↓` | 末尾へ | 一覧の末尾へ移動します。 | [操作の基本](navigation.md) |
| `Shift+N` | 最初のファイルへ | フォルダを飛ばして最初のファイルへ移動します。 | [操作の基本](navigation.md) |
| `Shift+P` | 最後のフォルダへ | ファイルの手前にある最後のフォルダへ移動します。 | [操作の基本](navigation.md) |
| `S` | 並び順切り替え | 名前、更新日時などの並び順を切り替えます。 | [表示・プレビュー](view-preview.md) |
| `Shift+S` | 昇順/降順切り替え | 現在の並び順の向きを反転します。 | [表示・プレビュー](view-preview.md) |

## 選択・マーク・ラベル

| キー | 機能 | 何ができるか | 詳細 |
|---|---|---|---|
| `A` | ファイルをまとめてマーク | ファイルだけをまとめてマーク、または解除します。 | [選択とマーク](selection-marks.md) |
| `Shift+A` | フォルダも含めてマーク | フォルダも含めてまとめてマーク、または解除します。 | [選択とマーク](selection-marks.md) |
| `Ctrl+A` | すべてマーク | 一覧内の対象をすべてマークします。 | [選択とマーク](selection-marks.md) |
| `Ctrl+Shift+A` | すべて解除 | マークをすべて外します。 | [選択とマーク](selection-marks.md) |
| `Alt+A` | マーク反転 | マーク済みと未マークを入れ替えます。 | [選択とマーク](selection-marks.md) |
| `Alt+1`〜`Alt+7` | ラベル付け | 赤、橙、黄、緑、青、紫、灰のラベルを付けます。 | [選択とマーク](selection-marks.md) |
| `Ctrl+Alt+1`〜`Ctrl+Alt+7` | ラベルで絞り込み | 指定した色ラベルの項目だけを表示します。 | [選択とマーク](selection-marks.md) |

## 検索・フィルタ

| キー | 機能 | 何ができるか | 詳細 |
|---|---|---|---|
| `Ctrl+F` | ファイル検索 | フォルダ配下からファイル名で検索します。 | [ファイル検索](search.md) |
| `F` | ファジー選択 | 一覧の中から文字入力で項目を探して選びます。 | [ファイル検索](search.md) |
| `?` / `/` | インライン絞り込み | ファイル一覧をその場で絞り込みます。 | [表示・プレビュー](view-preview.md) |
| `;` | 常時フィルタ編集 | 表示フィルタの条件を編集します。 | [表示・プレビュー](view-preview.md) |
| `Ctrl+;` | 常時フィルタ解除 | 設定中の表示フィルタを解除します。 | [表示・プレビュー](view-preview.md) |

## 表示・プレビュー

| キー | 機能 | 何ができるか | 詳細 |
|---|---|---|---|
| `F3` | ペイン内プレビュー | 選択中ファイルのプレビューをペイン内に表示します。 | [表示・プレビュー](view-preview.md) |
| `T` / `Ctrl+F3` | テキストビューア | テキスト表示用のビューアを切り替えます。 | [表示・プレビュー](view-preview.md) |
| `Shift+F3` | ウィンドウプレビュー | 別ウィンドウでプレビューします。 | [表示・プレビュー](view-preview.md) |
| `Ctrl+Shift+G` | サムネイルグリッド | 画像などをグリッド表示に切り替えます。 | [表示・プレビュー](view-preview.md) |
| `Ctrl+R` | 表示更新 | 現在の一覧を最新状態に更新します。 | [表示・プレビュー](view-preview.md) |
| `I` | プロパティ表示 | 選択中の項目の情報を表示します。 | [表示・プレビュー](view-preview.md) |

## ブックマーク・お気に入り

| キー | 機能 | 何ができるか | 詳細 |
|---|---|---|---|
| `B` | ブックマーク切り替え | 現在の場所、または選択中の項目をブックマークします。 | [ブックマーク・お気に入り・履歴](bookmarks-favorites.md) |
| `Ctrl+B` | ブックマークリスト | ブックマーク一覧を開きます。 | [ブックマーク・お気に入り・履歴](bookmarks-favorites.md) |
| `Ctrl+D` | ブックマーク追加 | 現在の場所をブックマークへ追加します。 | [ブックマーク・お気に入り・履歴](bookmarks-favorites.md) |
| `Ctrl+Shift+D` | ブックマーク表示 | ブックマーク画面を開きます。 | [ブックマーク・お気に入り・履歴](bookmarks-favorites.md) |
| `F2` / `Alt+]` | 次のブックマーク | 次のブックマークへ移動します。 | [ブックマーク・お気に入り・履歴](bookmarks-favorites.md) |
| `Shift+F2` / `Alt+[` | 前のブックマーク | 前のブックマークへ移動します。 | [ブックマーク・お気に入り・履歴](bookmarks-favorites.md) |
| `J` | お気に入り | お気に入り一覧を開きます。 | [ブックマーク・お気に入り・履歴](bookmarks-favorites.md) |
| `+` / `Shift`+`+` / `テンキー +` | お気に入り追加 | 現在の場所をお気に入りへ追加します。 | [ブックマーク・お気に入り・履歴](bookmarks-favorites.md) |

## ツール・連携

| キー | 機能 | 何ができるか | 詳細 |
|---|---|---|---|
| `Ctrl+P` | コマンドパレット | コマンド名で検索して実行します。 | [操作の基本](navigation.md) |
| `Ctrl+H` | コマンドヘルプ | コマンドとキー割り当ての一覧を検索できます。 | [キーボードショートカット](keyboard-shortcuts.md) |
| `Ctrl+Shift+H` | 実行履歴 | 実行したコマンドの履歴を表示します。 | [外部ツール・コマンド実行](external-tools.md) |
| `Ctrl+Shift+L` | コマンドログ | コマンドログパネルを表示します。 | [外部ツール・コマンド実行](external-tools.md) |
| `` Ctrl+` `` | ターミナル | アクティブペインの場所でターミナルを開きます。 | [ターミナル](terminal.md) |
| `` Ctrl+Shift+` `` | 反対ペインでターミナル | 反対ペインの場所でターミナルを開きます。 | [ターミナル](terminal.md) |
| `G` | Git ウィンドウ | Git 操作用のウィンドウを開きます。 | [Git 連携](git.md) |
| `Ctrl+G` | Git スコープ更新 | Git 管理対象の範囲を更新します。 | [Git 連携](git.md) |
| `Ctrl+U` | ディスク使用量分析 | フォルダの容量を表で分析します。 | [ディスク使用量分析](disk-usage.md) |
| `Ctrl+J` | ジョブパネル | コピーや検索などのバックグラウンド処理を確認します。 | [ジョブパネル](jobs-panel.md) |
| `Ctrl+,` | 設定 | 設定画面を開きます。 | [設定](settings.md) |

## シェルフ・仮想リスト

| キー | 機能 | 何ができるか | 詳細 |
|---|---|---|---|
| `V` | シェルフへ追加 | 選択中、またはマークした項目を一時置き場へ追加します。 | [シェルフ](shelf.md) |
| `Shift+V` | シェルフからコピー | シェルフ上の項目をアクティブペインへコピーします。 | [シェルフ](shelf.md) |
| `Ctrl+V` | シェルフから移動 | シェルフ上の項目をアクティブペインへ移動します。 | [シェルフ](shelf.md) |
| `Ctrl+Shift+V` | シェルフ表示切り替え | シェルフの表示を切り替えます。 | [シェルフ](shelf.md) |
| `Ctrl+Shift+N` | 仮想リスト作成 | 選択項目から仮想リストを作ります。 | [仮想フォルダ・仮想リスト](virtual-folders.md) |
| `Ctrl+Shift+M` | 仮想リストへ追加 | 選択項目を仮想リストへ追加します。 | [仮想フォルダ・仮想リスト](virtual-folders.md) |
| `Alt+Shift+L`（macOS は `Command+Shift+L`） | 既存の仮想リストへ追加 | 既存の仮想リストを選んで追加します。 | [仮想フォルダ・仮想リスト](virtual-folders.md) |
| `Ctrl+Delete` | 仮想リストから削除 | 仮想リスト上の項目をリストから外します。 | [仮想フォルダ・仮想リスト](virtual-folders.md) |
| `Ctrl+Shift+Delete` | 仮想リストをクリア | 仮想リストの内容を空にします。 | [仮想フォルダ・仮想リスト](virtual-folders.md) |

## ファンクションキー

画面下部のファンクションキーバーに出るキーです。`F1`、`F4`、`F9`〜`F12` などの `User` 枠は、よく使う機能や外部ツールを自分で割り当てるための空き枠です。設定方法は [キーボードショートカット](keyboard-shortcuts.md) を参照してください。

| キー | 初期機能 | 説明 |
|---|---|---|
| `F1` | User 1 | ユーザー割り当て用 |
| `F2` | Next BM | 次のブックマークへ移動 |
| `F3` | Preview | ペイン内プレビュー |
| `F4` | User 4 | ユーザー割り当て用 |
| `F5` | Copy | コピー |
| `F6` | Move | 移動 |
| `F7` | MkDir | フォルダ作成 |
| `F8` | Delete | 削除 |
| `F9`〜`F12` | User 9〜12 | ユーザー割り当て用 |
| `Shift+F2` | Prev BM | 前のブックマークへ移動 |
| `Shift+F3` | Win Prev | ウィンドウプレビュー |
| `Shift+F1`、`Shift+F4`〜`Shift+F12` | User 13〜24 | ユーザー割り当て用 |
| `Ctrl+F1`〜`Ctrl+F12` | User 25〜36 | ユーザー割り当て用 |

[← マニュアルトップへ戻る](index.md)

### ファイル操作（コピー・移動・リネーム・削除）

InsightFlow は左右2つのペインを使うクラシックな2画面ファイラーです。**コピーと移動の行き先は、反対側のペインで開いているフォルダ**になります。

## まず準備：左右にフォルダを開く

1. 片方のペインに「コピー元」のフォルダを開きます。
2. `Tab` でもう一方のペインに移り、「コピー先」のフォルダを開きます。
3. コピー元のペインに戻り、対象のファイル/フォルダにカーソルを合わせます（複数まとめて操作する場合は[マーク](selection-marks.md)します）。

## コピー・移動

| 操作 | キー | メニュー |
|---|---|---|
| 反対ペインへコピー | `C` または `F5` | File → Copy to Other Pane |
| 場所を指定してコピー | — | File → Copy To... |
| 反対ペインへ移動 | `M` または `F6` | File → Move |
| 場所を指定して移動 | — | File → Move To... |

画面下部のファンクションキーバーにも **F5=Copy / F6=Move / F7=MkDir / F8=Delete** が表示されています。

## 新規作成・リネーム

| 操作 | キー | メニュー |
|---|---|---|
| 新しいフォルダ | `K` または `F7` | File → Make Directory |
| 新しいテキストファイル | `Shift+E` | File → New Text File |
| リネーム | `R` | File → Rename |
| 連続リネーム（複数を一括） | `Shift+R` | File → Batch Rename |

## 削除

| 操作 | キー | メニュー |
|---|---|---|
| ごみ箱へ移動 | `D` / `Delete` / `F8` | File → Move to Trash |
| 完全に削除 | `Shift+D` / `Shift+Delete` | File → Delete Permanently |

## コピー確認・上書きの扱い

- コピー/移動を実行する前に確認ダイアログが表示されます（設定で無効化可）。
- 同名ファイルが既にある場合は、スキップ・上書き・リネーム・新しい方のみ、などから選べます。
- 大量・大容量のコピーはバックグラウンドの[ジョブ](jobs-panel.md)として処理され、進捗を確認できます。コピーエンジンに SCOPY を選ぶと高速化できます（[SCOPY 高速コピー](scopy-copy.md)）。

[← マニュアルトップへ戻る](index.md)

### ファイル検索

`Ctrl+F` で再帰検索ダイアログを開き、現在のフォルダ以下をファイル名で検索できます。

## メニューから開く

- メニューバーの **Search → Recursive Search**
- フォルダを右クリック → **Search Here**
- `Ctrl+P` でコマンドパレットを開き、「**Recursive Search**」と入力して実行

## 使い方

1. `Ctrl+F` で検索ダイアログを開きます。
2. クエリ欄にファイル名の一部を入力します（ワイルドカード・部分一致に対応）。
3. `Ctrl+Enter` で検索を開始します。結果は名前・フォルダ・サイズ・更新日時の一覧で表示されます。
4. `Tab` キーで結果にマークを付け、複数選択できます。
5. `Enter` で選択した項目を開きます。`E` キーで編集操作に移れます。

## バックグラウンド化

検索中に **Background** ボタンを押すと、検索処理をジョブパネルに移して、メインペインでの作業を継続できます。検索が終わったら、ジョブパネルから結果を開き直せます。

## 補足

高速な索引（SFIS）が利用可能な場合はそれを使い、無い場合はファイルシステムを直接スキャンします。検索範囲はアクティブペインの現在のフォルダ以下です。

[← マニュアルトップへ戻る](index.md)

### フォルダ同期 (Folder Sync)

左のフォルダ（元）から右のフォルダ（先）へ、差分だけを同期する機能です。実行前にプレビューで確認できます。

## メニューから開く

- メニューバーの **Tools → Folder Sync**
- `Ctrl+P` でコマンドパレットを開き、「**Folder Sync**」と入力して実行

## 基本の使い方

1. 上記の方法で Folder Sync を開きます。
2. **Left Folder**（元）と **Right Folder**（先）を指定します。省略時はアクティブなペインのフォルダが使われます。
3. モードを選びます。
   - **Update** — 新規ファイルの追加と、更新されたファイルの上書きのみ（先の余分なファイルはそのまま残す）
   - **Mirror** — Update に加えて、先にしかない余分なファイルを削除し、完全に一致させる
4. 必要なら除外パターンを追加します（`*.tmp`、`bin/**`、`node_modules/**` など）。よく使うプリセット（ビルド成果物、ソース管理フォルダ、一時ファイルなど）も用意されています。
5. **Compare** でプレビューを確認し、問題なければ **Execute** で実行します。実行はバックグラウンドジョブとして処理されます。

## 差分の判定基準

ファイルサイズと更新日時で比較します（内容のハッシュ比較はしません）。

## バックアップ（バージョニング）

上書き・削除されるファイルを、実行前に `.sync-backup/yyyyMMdd-HHmmss` のようなフォルダへ退避できます。誤って削除した場合の復旧に使えます。

## レポート

同期結果を Markdown または CSV で書き出せます。

## 補足

- 同期は常に左→右の一方向です。双方向の相互マージはできません。
- シンボリックリンク・reparse point は同期対象から除外されます。
- 先の方が新しい（コンフリクト）場合は自動解決されません。バージョニングを有効にした上で手動確認してください。

[← マニュアルトップへ戻る](index.md)

### ブックマーク・お気に入り・履歴

よく使うフォルダやファイルに素早く戻るための機能です。すべて **Go** メニューに集約されています。

## 履歴・最近使ったもの

| 機能 | キー | メニュー |
|---|---|---|
| 戻る / 進む | `Alt+←` / `Alt+→` | Go → Back / Forward |
| フォルダ履歴 | `H` | Go → History |
| 最近使ったファイル | — | Go → Recent Files |
| ジャンプ履歴（絞り込み） | `Shift+J` | Go → Path Jump |
| ロケーションランチャー | `L` | Go → Location Launcher |

## ブックマーク

現在のフォルダに印を付けて、後から一覧で戻れます。

| 操作 | キー | メニュー |
|---|---|---|
| ブックマークの切り替え | `B` | Go → Bookmarks → Toggle BookMark |
| ブックマーク一覧を開く | `Ctrl+B` | Go → Bookmarks → Open Bookmark List |
| ブックマークを追加 | `Ctrl+D` | Go → Bookmarks → Add Bookmark |
| 次 / 前のブックマークへ | `Alt+]` / `Alt+[` | Go → Bookmarks → Next / Previous |

## お気に入り

| 操作 | キー | メニュー |
|---|---|---|
| お気に入り一覧 | `J` | Go → Favorites → Show Favorites |
| お気に入りに追加 | `+` | Go → Favorites → Add Favorite |

お気に入りの編集は[設定](settings.md)の **Favorites** タブで行えます。

[← マニュアルトップへ戻る](index.md)

### リモートピア接続（実験的）

同じ LAN 上の別マシンで動く InsightFlow に接続し、そのマシンのフォルダを `remote://` パスとして閲覧できる機能です。

> **実験的機能です。** 現状は同一 LAN 内・手動登録のピアが対象で、通信は暗号化されていません（信頼できる LAN での利用を前提とした最小認証）。閲覧とダウンロード（読み取り）が中心で、リモートへの書き込み系操作は今後の対応予定です。既定では無効になっています。

## 接続の準備

1. 接続される側のマシンで、[設定](settings.md)の **Remote** タブでサーバ（受信）を有効にし、共有トークンを設定します（既定は無効）。
2. 接続する側で、メニューバーの **File → Connect to Remote...** からピアのホスト・ポート・トークンを指定して接続します。

## できること

- リモートマシンのドライブ・フォルダの一覧表示
- ファイル情報の確認
- ファイルのダウンロード（読み取り）

リモートを開いているタブには専用のバッジが付きます。

## 注意

通信は平文で、信頼できる LAN 内での利用を想定しています。インターネット越しの利用や、機密性の高い環境での常用は避けてください。

[← マニュアルトップへ戻る](index.md)

### 仮想フォルダ・仮想リスト

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

### 右クリックメニューのカスタマイズ

ファイルペイン・検索結果・ディスク使用量・アーカイブなど、場面ごとの右クリックメニューを自分好みに編集できます。

## 設定方法

1. **設定 → Context Menus** タブを開きます。
2. 編集対象のプロファイルを選びます（Filesystem / Search Results / Disk Usage / Cleanup / Archives）。
3. 各項目のラベル・コマンド・表示条件・所属サブメニューを編集します。
4. **Add Submenu** でサブメニューを作り、項目をその中に移動できます。
5. ビルトインコマンドのほか、外部ツールやコマンドお気に入りも項目として追加できます。
6. アクセスキーは `&amp;Open` のように `&amp;` を付けて指定します（メニュー表示時に下線が付き、そのキーで直接実行できます）。
7. 設定パネル内でプレビューが即座に更新されます。編集後は保存してください。

## メニュー操作時のキー

- 上下キー: 項目移動
- 左右キー: サブメニューの開閉
- Enter: コマンド実行
- アクセスキー（例: `A`）: 該当項目へジャンプして即実行

## 補足

- 表示条件はおおまかな単位です（例: 「ファイル/フォルダ選択時」「ペイン背景」「検索結果」など）。
- アクセスキーが重複した場合は警告が出ますが、後勝ちで動作します。
- これは InsightFlow 内のメニューの話で、Windows エクスプローラー本体の右クリックメニューを直接編集するものではありません。

[← マニュアルトップへ戻る](index.md)

### 外部ツール・コマンド実行

選択したファイルを外部プログラムで開いたり、任意のコマンドを実行したりできます。すべて **Tools → Run** に集約されています。

このページでいう「コマンド」は、ざっくり次の2種類です。

| 種類 | 何に使うか | 設定場所 |
|---|---|---|
| 外部ツール | VS Code、メモ帳、比較ツールなど、よく使うアプリを登録する | Tools → Run → Manage External Tools |
| カスタムコマンド | コマンドラインを自分で書いて、現在選択中のファイルやフォルダに対して実行する | Settings → Commands → Custom Commands |

まずは「外部ツール」を使うのがおすすめです。アプリの場所と引数を分けて入力できるので、はじめてでも設定しやすくなっています。

## 実行

| 操作 | メニュー |
|---|---|
| 実行 | Tools → Run → Run |
| すぐ実行 | Tools → Run → Run Immediate（`Ctrl+Enter`）|
| 引数を付けて実行 | Tools → Run → Run with Arguments |
| 管理者として実行 | Tools → Run → Run as Admin |

## 外部ツールの登録

よく使うアプリを「外部ツール」として登録しておくと、右クリックメニューやコマンドから素早く呼び出せます。

- **Tools → Run → Register as External Tool** — 選択中の実行ファイルを外部ツールとして登録
- **Tools → Run → Manage External Tools** — 登録済みツールの管理
- **Tools → Run → Manage Custom Commands** — 独自コマンドの管理

登録した外部ツールやカスタムコマンドは、[右クリックメニュー](context-menus.md)の項目として追加したり、ファンクションキーに割り当てたりできます。

### 外部ツールを手で登録する

1. **Tools → Run → Manage External Tools** を開きます。
2. **Add** を押します。
3. **Name** に表示名を入れます。例: `VS Codeで開く`
4. **Executable** に起動したいアプリを入れます。例: `code`、`notepad.exe`、`C:\Tools\WinMerge\WinMergeU.exe`
5. **Arguments Template** に、アプリへ渡すファイルやフォルダを書きます。例: `"{target}"`
6. 必要なら **Working Directory Template** に作業フォルダを書きます。迷ったら空のままで構いません。
7. 下の **Preview** で、実際に実行される形を確認してから **OK** を押します。
8. 設定画面に戻ったら **Save** します。

`Arguments Template` では、選択中のファイルやフォルダを `{target}` のような置き換え文字で表します。

| 書き方 | 意味 | よく使う場面 |
|---|---|---|
| `{target}` | 今選んでいるファイルまたはフォルダ | 選択ファイルをエディタで開く |
| `{targetDir}` | 今選んでいる項目が入っているフォルダ | その場所でツールを動かす |
| `{active.path}` | 操作中のペインで開いているフォルダ | フォルダ全体を開く |
| `{selected.or.marked.paths}` | マークがあればマークした項目、なければ選択項目 | 複数ファイルをまとめて渡す |
| `{marked.first.path}` | マークした最初の1件 | 比較ツールの左側ファイル |
| `{other.marked.first.path}` | 反対側ペインでマークした最初の1件 | 比較ツールの右側ファイル |

ファイル名やフォルダ名に空白が入ることがあるため、1件だけ渡す場合は `"{target}"` のように `"` で囲むのが安全です。複数件を渡す `{selected.or.marked.paths}` は自動で必要な引用符が付きます。

### 外部ツールの例

| やりたいこと | Executable | Arguments Template | Working Directory Template |
|---|---|---|---|
| 選択ファイルをメモ帳で開く | `notepad.exe` | `"{target}"` | 空でOK |
| 選択ファイル/フォルダを VS Code で開く | `code` | `"{target}"` | `{targetDir}` |
| 操作中フォルダを VS Code で開く | `code` | `"{active.path}"` | `{active.path}` |
| 左右ペインでマークしたファイルを比較する | `C:\Tools\WinMerge\WinMergeU.exe` | `"{marked.first.path}" "{other.marked.first.path}"` | 空でOK |

`Executable not found` と表示される場合は、`Executable` にアプリのフルパスを指定してください。例: `C:\Program Files\Microsoft VS Code\Code.exe`

## カスタムコマンドを作る

カスタムコマンドは、1行のコマンドラインを自分で書いて実行する機能です。外部ツールより自由ですが、コマンドラインに慣れていない場合は、まず外部ツールから使う方が簡単です。

1. **Tools → Settings** を開きます。
2. 左側で **Commands** を選び、**Custom Commands** タブを開きます。
3. **Edit Custom Commands...** を押します。
4. **Add** を押します。
5. **Name** に表示名を入れます。
6. **Command Line** に実行したい内容を書きます。
7. 必要なら **Working Directory** を入れます。
8. **Insert placeholder...** で、選択中のファイルなどを表す置き換え文字を挿入できます。
9. **Preview** で展開結果を確認します。
10. **OK**、または設定画面の **Save** で保存します。

カスタムコマンドでは、置き換え文字の形が外部ツールと違います。`{target}` ではなく `${active.item.full}` のように `${...}` で書きます。

| 書き方 | 意味 |
|---|---|
| `${active.path}` | 操作中のペインで開いているフォルダ |
| `${other.path}` | 反対側ペインで開いているフォルダ |
| `${active.item.full}` | 操作中ペインで選択している項目のフルパス |
| `${active.item.name}` | 選択項目の名前 |
| `${active.item.stem}` | 拡張子を除いた名前 |
| `${active.item.ext}` | 拡張子 |
| `${active.marked.full}` | 操作中ペインでマークした項目すべて |
| `${active.marked.first.full}` | 操作中ペインでマークした最初の1件 |
| `${other.marked.full}` | 反対側ペインでマークした項目すべて |
| `${other.marked.first.full}` | 反対側ペインでマークした最初の1件 |

例:

| やりたいこと | Command Line | Working Directory |
|---|---|---|
| 選択ファイルをメモ帳で開く | `notepad.exe "${active.item.full}"` | `${active.path}` |
| 操作中フォルダをエクスプローラーで開く | `explorer.exe "${active.path}"` | 空でOK |
| マークしたファイルを VS Code で開く | `code ${active.marked.full}` | `${active.path}` |

### Run Mode の選び方

| Run Mode | 使い方 |
|---|---|
| DirectProcess | 通常はこちら。実行ファイルと引数として直接起動します。 |
| ShellExecute | Windows の関連付けやシェル機能を使いたい場合に選びます。通常は変更不要です。 |

### よくあるつまずき

- 外部ツールは `{target}`、カスタムコマンドは `${active.item.full}` のように書き方が違います。
- ファイルパスを1件だけ渡すときは、`"{target}"` や `"${active.item.full}"` のように引用符で囲むと安全です。
- 設定後は、最後に設定画面の **Save** を押してください。
- うまく動かないときは、まず **Preview** の内容を確認してください。ここに表示される文字列が、実際に実行されるコマンドです。

## エディタで開く

- `E` — 選択ファイルを設定したテキストエディタで開く（**File → Open in Text Editor**）

外部エディタやターミナルの設定は[設定](settings.md)の **Text Editor** / **Terminal** タブで行えます。

[← マニュアルトップへ戻る](index.md)

### 操作の基本（デュアルペイン・タブ）

InsightFlow は左右2つのペインでフォルダを表示する、デュアルペイン構成です。各ペインは独立してタブとナビゲーション履歴を持ちます。

## メニューバー

ウィンドウ上部（macOS では画面上部のネイティブメニューバー）に、次のメニューがあります。ほとんどの機能はここから辿れます。

- **File** — 開く・コピー/移動・リネーム・削除・アーカイブ（圧縮/展開）・タブ操作・ワークスペースの入出力
- **Edit** — パスや名前のコピー、マーク（選択）、ラベル
- **View** — 表示更新・プレビュー切替・並び替え・テーマ
- **Go** — 戻る/進む・親/ルート・履歴・最近使ったファイル・ブックマーク・お気に入り
- **Search** — 再帰検索・grep・フィルタ
- **Tools** — 実行・ターミナル・[ディスク使用量](disk-usage.md)・[フォルダ同期](folder-sync.md)・[ジョブ](jobs-panel.md)・[設定](settings.md)など
- **Git** — Git 連携
- **Help** — コマンドパレット・コマンドヘルプ・アップデート確認・About

各メニュー項目には、対応するキーボードショートカットが右側に表示されます。

## ペインとタブ

- 各ペインの下部にタブが並び、開いているフォルダを切り替えられます。
- アーカイブを開いているタブには `[ZIP]` のようなバッジが付きます。
- `Tab` でもう一方のペインへフォーカスを移します（左⇄右）。
- タブ操作: `Ctrl+T` 新規タブ / `Ctrl+W` タブを閉じる / `Ctrl+Tab`・`Ctrl+Shift+Tab` 次/前のタブ。

## 2ペインの考え方

InsightFlow はクラシックな2画面ファイラーです。**コピーや移動は「反対側のペインで開いているフォルダ」が行き先**になります。まず左右のペインに「コピー元」と「コピー先」のフォルダをそれぞれ開いてから操作するのが基本です。詳しくは[ファイル操作](file-operations.md)を参照してください。

## 履歴・ジャンプ

- 戻る/進むボタン、または **Go → Back / Forward** で、アクティブペインの訪問履歴を辿れます。**Go → Parent / Root** で親フォルダやルートへ移動できます。
- `Shift+J`（**Go → Path Jump**）で最近訪れたフォルダの一覧（ジャンプ履歴）を開けます。絞り込み検索が可能です。
- **Go → History / Recent Files / Bookmarks / Favorites** から、履歴・最近使ったファイル・ブックマーク・お気に入りにアクセスできます。
- アドレスバーのパンくずをクリックすると、親フォルダへ直接移動できます。

## コマンドパレット

`Ctrl+P` でコマンドパレットを開き、コマンド名で検索して実行できます。メニューの奥深くにあるコマンドを素早く呼び出せます。

[← マニュアルトップへ戻る](index.md)

### 表示・プレビュー

## 並び替え

| 操作 | キー | メニュー |
|---|---|---|
| 並び順を切り替え | `S` | View → Sort → Sort |
| 昇順/降順を反転 | `Shift+S` | View → Sort → Sort Reverse |

メニューの **View → Sort** から、名前・拡張子・サイズ・更新日時・ラベル順を直接選べます。

## プレビュー

選択中のファイルの中身を、その場でプレビューできます。

| 操作 | キー | メニュー |
|---|---|---|
| ペイン内プレビュー | `F3` | View → Toggle Pane Preview |
| テキストビューア | `T` / `Ctrl+F3` | View → Toggle Text Viewer |
| ウィンドウプレビュー（別枠） | `Shift+F3` | View → Toggle Window Preview |
| サムネイルグリッド表示 | `Ctrl+Shift+G` | View → Toggle Thumbnail Grid |

画像・PDF・Office 文書・テキスト/コード・動画など、多くの形式に対応しています。

## テーマ（外観）

**View → Theme** から、システム連動・ダーク・ライトを切り替えられます。「Toggle Dark / Light」でダークとライトをワンタッチで切り替えできます。色の細かいカスタマイズは[設定](settings.md)の Colors タブで行えます。

## 表示の絞り込み・非表示

- **View → Show Ignored Items** — 通常は隠している項目の表示切り替え
- **View → Display Ignore Rules...** — 表示から除外するルールの管理
- **View → Ignore Selected Name / Extension** — 選択した名前・拡張子を表示除外に追加

## 表示更新

最新の状態に更新するには `Ctrl+R`（**View → Refresh**）。

[← マニュアルトップへ戻る](index.md)

### 設定

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

### 選択とマーク・ラベル

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

## よくある聞き方

- アーカイブ（ZIP / 7z / tar.zst） → 
- ブックマーク・お気に入り・履歴 → 
- 右クリックメニューのカスタマイズ → 
- デフォルトキーバインド一覧 → 
- ディスク使用量分析 → 
- 外部ツール・コマンド実行 → 
- ファイル操作（コピー・移動・リネーム・削除） → 
- フォルダ同期 (Folder Sync) → 
- はじめに → 
- Git 連携 → 
