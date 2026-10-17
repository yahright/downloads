# InsightFlow Help 0.10.26 (en)

Generated: 2026-10-17 03:53 UTC

Give this document to an AI assistant such as NotebookLM, GitHub Copilot, or ChatGPT to ask questions about InsightFlow.

## Settings

### Commands > Custom Commands
- Command line (`CustomCommandLineBox`)
- Confirm before run (`CustomCommandConfirmBeforeRunBox`)
- Enabled (`CustomCommandEnabledBox`)
- Expanded command line (`CustomCommandPreviewCommandLineBox`)
- Expanded working directory (`CustomCommandPreviewWorkingDirectoryBox`)
- Name (`CustomCommandNameBox`)
- Run mode (`CustomCommandRunModeBox`)
- Treat empty placeholder as error (`CustomCommandTreatEmptyPlaceholderAsErrorBox`)
- Working directory (`CustomCommandWorkingDirectoryBox`)

### Commands > Favorites
- IME when Favorite text inputs receive focus: (`FavoriteImeModeCombo`)
- Preview favorites (`EnableFavoritePreviewBox`)
- Suggest macros (`EnableMacroSuggestionsBox`)
- Warn about invalid favorites (`EnableFavoriteValidationWarningsBox`)

### General > AI Chat
- API key (`AiChatAuthApiKeyRadio`)
- Attach marked items (`AiChatAutoAttachMarksBox`)
- Attach search results and list contents (`AiChatAutoAttachSearchResultsBox`)
- Attach the active pane folder (`AiChatAutoAttachActivePaneBox`)
- Attach the cursor item (`AiChatAutoAttachCursorItemBox`)
- Collapse tool calls (`AiChatCollapseToolCallsBox`)
- Connect automatically when the panel opens (`AiChatAutoConnectBox`)
- Enable AI chat (`AiChatEnabledBox`)
- One format per line. Both dialogs list these on the "Date name" button, previewed with the current time. (`AiChatApiKeyBox`)
- One format per line. Both dialogs list these on the "Date name" button, previewed with the current time. (`AiChatDefaultAgentBox`)
- One format per line. Both dialogs list these on the "Date name" button, previewed with the current time. (`AiChatManifestThresholdBox`)
- One format per line. Both dialogs list these on the "Date name" button, previewed with the current time. (`AiChatPermissionPolicyBox`)
- Pick file paths out of answer text (without a code block) (`AiChatExtractPathsBox`)
- Restore the previous session (`AiChatRestoreSessionBox`)
- Show agent thoughts (`AiChatShowThoughtsBox`)
- Show the instruction sent before each message (`AiChatShowPreambleBox`)
- Subscription (login in claude) (`AiChatAuthSubscriptionRadio`)
- Write a JSON-RPC log (`AiChatJsonRpcLogBox`)

### General > Automation
- Automation enabled (`AutomationEnabledBox`)
- One format per line. Both dialogs list these on the "Date name" button, previewed with the current time. (`InterfaceLanguageBox`)

### General > Colors
- Active border (`FileListActivePaneBorderHexBox`)
- Alternating-row background (`FileListAltRowBackgroundHexBox`)
- Background (`FileListBackgroundHexBox`)
- Editing variant (`ColorEditVariantBox`)
- File text (`FileListFileForegroundHexBox`)
- Folder text (`FileListFolderForegroundHexBox`)
- Hover background (`FileListHoverBackgroundHexBox`)
- Inactive border (`FileListInactivePaneBorderHexBox`)
- Selection background (`FileListSelectionBackgroundHexBox`)
- Selection text (`FileListSelectionForegroundHexBox`)

### General > Labels
- ADS preferred (recommended) - uses NTFS alternate data streams, falls back to database (`LabelModeAdsRadio`)
- Database only - stores labels in InsightFlow's database, does not touch files (`LabelModeDbRadio`)
- Disabled (labels not available) (`LabelModeDisabledRadio`)

### General > Naming Templates
- Append _2, _3, ... when the generated name already exists (`EnsureUniqueGeneratedNameBox`)
- New file format (`NewFileNameTemplateBox`)
- New folder format (`NewFolderNameTemplateBox`)
- One format per line. Both dialogs list these on the "Date name" button, previewed with the current time. (`NamingTemplateListBox`)
- Pre-fill the Create Folder dialog with this name (`AutoFillNewFolderNameBox`)
- Pre-fill the New Text File dialog with this name (`AutoFillNewFileNameBox`)

### General > Theme
- App theme (`ThemeModeBox`)

### Input > Context Menus
- Command (`ContextMenuCommandBox`)
- Commands (`ContextMenuPaletteSearchBox`)
- Editing menu for (`ContextMenuProfileBox`)
- Label (`ContextMenuLabelBox`)
- Preview as (`ContextMenuPreviewContextBox`)
- Section (`ContextMenuSectionBox`)

### Input > Global HotKey
- Enable global hotkey (`GlobalHotKeyEnabledBox`)

### Integrations > Git
- Default log entries (`GitDefaultLogCountBox`)
- Effective command (`EffectiveSshCommandBox`)
- Extra SSH args (`ExtraSshArgsBox`)
- Git executable (`GitPathBox`)
- Open-file behavior (`GitOpenFileBehaviorBox`)
- OpenSSH (`SshOpenSshRadio`)
- OpenSSH path (`OpenSshPathBox`)
- PuTTY / plink (`SshPlinkRadio`)
- PuTTY plink path (`PlinkPathBox`)
- Show Git SVN commands (`GitSvnEnabledBox`)
- Show full patch by default (`GitShowFullPatchByDefaultBox`)
- System default (`SshSystemDefaultRadio`)
- Use Git integration (`GitEnabledBox`)

### Integrations > Grep & History
- Backend (`GrepBackendBox`)
- Enable Shift+J input history (`EnableJumpHistoryBox`)
- Enable command recall history (`EnableExecutionHistoryBox`)
- Max entries (`MaxExecutionHistoryEntriesBox`)
- Max entries (`MaxJumpHistoryEntriesBox`)
- Recent first ordering (`JumpHistoryRecentFirstBox`)
- Save failed executions (`SaveFailedExecutionsBox`)
- Save failed jump inputs (`SaveFailedJumpInputsBox`)
- Save successful executions (`SaveSucceededExecutionsBox`)
- rg path (`RipgrepPathBox`)
- sg path (`SgrepPathBox`)

### Integrations > Terminal
- Command line (`TerminalCommandLineBox`)
- Use terminal integration (`TerminalEnabledBox`)
- Working directory (`TerminalWorkingDirectoryBox`)

### Integrations > Text Editor
- Argument template (`ArgumentsTemplateBox`)
- Editor path (`EditorPathBox`)

### JobsAndDiskUsage > Background Jobs
- Auto-clear completed after (minutes) (`AutoClearCompletedAfterMinutesBox`)
- Completed jobs to keep (`KeepCompletedJobsCountBox`)
- Concurrent file job limit (`MaxConcurrentFileJobsBox`)
- Copy engine (`CopyEngineBox`)
- Default job priority (`DefaultJobPriorityBox`)
- Delete engine (`DeleteEngineBox`)
- Enable conservative file-operation Undo (experimental, opt-in) (`EnableFileOperationUndoBox`)
- Enabled (`RunSameDestinationSequentialBox`)
- Keep failed jobs until cleared (`KeepFailedJobsUntilClearedBox`)
- Notify on completed (`NotifyOnCompletedBox`)
- Notify on failed (`NotifyOnFailedBox`)
- Notify when attention needed (`NotifyOnNeedsAttentionBox`)
- Prevent display sleep during long-running jobs (`PreventDisplaySleepDuringLongRunningJobsBox`)
- Prevent system sleep during long-running jobs (`PreventSystemSleepDuringLongRunningJobsBox`)
- SCOPY native library path (`ScopyNativeLibraryPathBox`)
- Show job notifications (`EnableJobNotificationsBox`)
- Suppress notifications when app is active (`SuppressNotificationsWhenAppActiveBox`)
- Undo history entries (`FileOperationUndoHistoryLimitBox`)

### JobsAndDiskUsage > Copy Defaults
- Always excluded extensions (`CopyDefaultExcludedExtensionsBox`)
- Copy scope (`CopyDefaultScopeBox`)
- Create folders that are empty after filtering (`CopyDefaultCreateEmptyDirectoriesBox`)
- Exclude Git metadata (.git) (`CopyDefaultExcludeGitMetadataBox`)
- Excluded folder names (`CopyDefaultExcludedFoldersBox`)
- Include files without an extension when using “Only these extensions” (`CopyDefaultIncludeExtensionlessBox`)
- Included extensions (`CopyDefaultIncludedExtensionsBox`)
- Respect Git ignore rules (.gitignore, repository and global excludes) (`CopyDefaultRespectGitIgnoreBox`)
- Use default copy filters (`CopyDefaultsEnabledBox`)

### JobsAndDiskUsage > Disk Usage (Advanced)
- Allow bulk review operations (`DiskUsageEnableCleanupReviewBulkOperationsBox`)
- Classify cleanup candidates (`DiskUsageEnableCleanupClassificationBox`)
- Cleanup ranking sensitivity (`DiskUsageCleanupRankingSensitivityBox`)
- Deferred aggregation interval (ms) (`DiskUsageDeferredAggregateIntervalBox`)
- Detect archives (`DiskUsageEnableArchiveDetectionBox`)
- Detect build outputs (`DiskUsageEnableBuildOutputDetectionBox`)
- Detect caches (`DiskUsageEnableCacheDetectionBox`)
- Detect changes during review (`DiskUsageEnableCleanupReviewDriftDetectionBox`)
- Detect dependency stores (`DiskUsageEnableDependencyStoreDetectionBox`)
- Detect virtual-machine disks (`DiskUsageEnableVmDiskDetectionBox`)
- Disk usage backend (`DiskUsageBackendPreferenceBox`)
- Enable Review Diagnostics Overlay (`DiskUsageEnableCleanupReviewDiagnosticsOverlayBox`)
- Fallback when snapshot/index backend is unavailable (`DiskUsageFallbackOnFailureBox`)
- Hide Low Confidence By Default (`DiskUsageHideLowConfidenceByDefaultBox`)
- Hide Protected/System By Default (`DiskUsageHideProtectedSystemByDefaultBox`)
- Large-dataset threshold (`DiskUsageMassiveDatasetThresholdBox`)
- Large-item count (`DiskUsageHeavyHittersCountBox`)
- Large-item threshold (bytes) (`DiskUsageTopHeavyThresholdBytesBox`)
- Lazy Relative Path (`DiskUsageLazyRelativePathBox`)
- MFT Snapshot Requires Confirmation When Elevated (`DiskUsageMftRequiresConfirmationBox`)
- Maximum scan depth (`DiskUsageMaxDepthBox`)
- Minimum candidate size (bytes) (`DiskUsageMinimumCleanupCandidateBytesBox`)
- Potential reclaim confidence (`DiskUsagePotentialReclaimConfidenceBox`)
- Prefer MFT Snapshot For DiskUsage (`DiskUsagePreferMftSnapshotBox`)
- Preserve Notes Across Path Renames (`DiskUsagePreserveCleanupReviewNotesAcrossPathRenamesBox`)
- Publish batch size (`DiskUsagePublishBatchSizeBox`)
- Publish largest items first (`DiskUsageEnableTopHeavyProgressivePublishBox`)
- Reveal details progressively (`DiskUsageEnableProgressiveDetailRevealBox`)
- Review badge style (`DiskUsageCleanupReviewBadgeStyleBox`)
- Root-first Publish (`DiskUsageRootFirstPublishBox`)
- Run DiskUsage in background jobs (`DiskUsageRunInBackgroundBox`)
- SFIS timeout (ms) (`DiskUsageSfisTimeoutBox`)
- Show DiskUsage Diagnostics Overlay (`DiskUsageShowDiagnosticsOverlayBox`)
- Show MFT Diagnostics (`DiskUsageShowMftDiagnosticsBox`)
- Show Massive Mode Banner (`DiskUsageShowMassiveModeBannerBox`)
- Show Missing Review Entries (`DiskUsageShowMissingCleanupReviewEntriesBox`)
- Show Protected/System Warnings (`DiskUsageShowProtectedSystemWarningsBox`)
- Show Suppressed Candidates (`DiskUsageShowSuppressedCandidatesBox`)
- Show cleanup candidates (`DiskUsageEnableCleanupCandidatesViewBox`)
- Show cleanup confidence (`DiskUsageEnableCleanupConfidenceBox`)
- Show largest items (`DiskUsageEnableHeavyHittersViewBox`)
- Show summary rows (`DiskUsageEnableSyntheticSummaryRowsBox`)
- Skip reparse points (`DiskUsageSkipReparsePointsBox`)
- Suggest Heavy Hitters In Massive Mode (`DiskUsageSuggestHeavyHittersInMassiveModeBox`)
- Summary-row threshold (`DiskUsageSyntheticSummaryRowThresholdBox`)
- Suppress Rule Diagnostics (`DiskUsageSuppressRuleDiagnosticsBox`)
- UI publish rate (FPS) (`DiskUsageMaxUiPublishFpsBox`)
- Use Allocated Size When Available (`DiskUsageUseAllocatedSizeBox`)
- Use cleanup suppression rules (`DiskUsageEnableCleanupSuppressRulesBox`)
- Use large-dataset mode (`EnableMassiveDatasetModeBox`)
- Use review keyboard shortcuts (`DiskUsageEnableCleanupReviewKeyboardShortcutsBox`)
- Use the NTFS MFT snapshot backend (`DiskUsageEnableNtfsMftSnapshotBackendBox`)
- Visible row limit (`DiskUsageMaxVisibleRowsBox`)

### JobsAndDiskUsage > Disk Usage (Basic)
- Accept incoming connections (expose this machine's filesystem) (`RemoteServerEnabledBox`)
- Auth token (`RemoteTokenBox`)
- Enable SFTP connections and file operations (`RemoteEnableSftpBox`)
- Exposed roots (one per line; empty = all drives) (`RemoteExposedRootsBox`)
- Listen port (`RemotePortBox`)
- Paste the connection string shown in the other server's settings. (`RemoteAddConnectionStringBox`)

### SearchAndStorage > Archives
- Archive temporary folder (`ArchiveTempDirectoryBox`)
- Auto Detect zstd (`AutoDetectZstdBox`)
- Default archive format (`DefaultArchiveFormatBox`)
- Default compression preset (`DefaultCompressionPresetBox`)
- Default extract behavior (`DefaultExtractBehaviorBox`)
- Enable Archive Diagnostics (`EnableArchiveDiagnosticsBox`)
- Portable macros accepted: {AppDir}, {ToolsDir}, {SettingsDir}, {LogDir}. No automatic conversion is applied. (`ExtractOverwritePolicyBox`)
- Prefer tar.zst For Large Archives (`PreferTarZstdForLargeArchivesBox`)
- zstd executable path (`ZstdExecutablePathBox`)

### SearchAndStorage > Containers
- 7z Backend (`SevenZipBackendBox`)
- 7z Enumeration Timeout ms (`SevenZipEnumerationTimeoutBox`)
- 7z executable path (`SevenZipExecutablePathBox`)
- Auto Detect 7z (`AutoDetectSevenZipBox`)
- Background Container Indexing (`BackgroundContainerIndexingBox`)
- Browse 7z files (`EnableSevenZipProviderBox`)
- Browse ZIP files (`EnableZipProviderBox`)
- Browse supported containers (`EnableContainerProvidersBox`)
- Container session cache limit (`ContainerSessionCacheSizeBox`)
- Enable 7z Diagnostics (`EnableSevenZipDiagnosticsBox`)
- Lazy Container Metadata (`LazyContainerMetadataBox`)
- Open container limit (`MaxOpenContainerSessionsBox`)
- Show Container Diagnostics (`ShowContainerDiagnosticsBox`)

### SearchAndStorage > Snapshot Search
- Enable Search Diagnostics (`EnableSearchDiagnosticsBox`)
- Max results (`SnapshotSearchMaxResultsBox`)
- Prefer MFT Snapshot Search (`PreferMftSnapshotSearchBox`)
- Prefer prefix matches (`EnablePrefixRankingBox`)
- Prefer recently used results (`EnableRecentnessBoostBox`)
- Publish batch size (`SnapshotSearchBatchSizeBox`)
- UI publish rate (FPS) (`SnapshotSearchPublishFpsBox`)
- Use snapshot search (`EnableSnapshotSearchBox`)

### System > Diagnostics
- Enable AI debug log (`AiDebugLogBox`)
- Enable command log (`CommandLogBox`)
- Enable key debug log (`KeyDebugLogBox`)
- Enable pane debug log (`PaneDebugLogBox`)
- Enable performance log (`PerformanceLogBox`)

### Updates > Updates
- Check On Startup (`CheckUpdatesOnStartupBox`)
- Check for updates (`EnableUpdateChecksBox`)
- Include Pre-release Builds (`IncludePreReleaseBuildsBox`)
- Manifest URL (`UpdateManifestUrlBox`)
- Update Channel (`UpdateChannelBox`)

### View > Filters
- Apply ignore rules to hidden files (`ApplyIgnoreRulesToHiddenFilesBox`)
- Enable display ignore rules (`DisplayIgnoreEnabledBox`)
- Files (`DisplayIgnoreFilesBox`)
- Folders (`DisplayIgnoreDirectoriesBox`)
- Select filter (`DisplayIgnoreKindBox`)
- Select filter (`DisplayIgnorePatternBox`)
- Select filter (`FuzzySelectFilterModeBox`)
- Show ignored items (`ShowIgnoredItemsBox`)

### View > Layout
- Alternating-row contrast (`ZebraIntensitySlider`)
- Attr (`ShowAttrColumnBox`)
- Attributes column width (`AttrWidthBox`)
- Color names by file type (folder/image/video/archive/exe…) (`ColorByFileTypeBox`)
- Ext (`ShowExtColumnBox`)
- Extension column width (`ExtWidthBox`)
- Horizontal (`HorizontalGridLinesBox`)
- List font (`ListFontFamilyBox`)
- List font size (`ListFontSizeBox`)
- Modified (`ShowModifiedColumnBox`)
- Modified-time column width (`TimeWidthBox`)
- Row height (`RowHeightBox`)
- Show column header (click to sort) (`ShowColumnHeaderBox`)
- Size (`ShowSizeColumnBox`)
- Size column width (`SizeWidthBox`)
- Vertical (`VerticalGridLinesBox`)

### View > Log Bar
- Auto-scroll when latest is visible (`LogBarAutoScrollBox`)
- Max entries (`LogBarMaxEntriesBox`)
- Visible lines (`LogBarVisibleLinesBox`)

### View > Pane
- Batch delay (ms) (`IncrementalPublishBatchDelayMsBox`)
- Batch size (`IncrementalPublishBatchSizeBox`)
- Compact (`CompactSizeRadio`)
- Confirm before file operations (`ConfirmBeforeCopyOperationBox`)
- Defer live update while active (`StableLiveDeferWhileTypingBox`)
- Enable mouse support (`EnableMouseSupportBox`)
- Human readable (`HumanReadableSizeRadio`)
- Idle merge delay (ms) (`IncrementalPublishIdleMsBox`)
- Incremental publish (`IncrementalPublishPolicyBox`)
- Multiple path separator (`MultiplePathSeparatorBox`)
- Pane info lines (`PaneInfoAreaLinesBox`)
- Pane tabs (`PaneTabsPlacementBox`)
- Quote copied paths (`QuoteCopiedPathsBox`)
- Raw bytes (`RawBytesSizeRadio`)
- Reload threshold (`IncrementalReloadThresholdBox`)
- Show Pane Info Area (`ShowPaneInfoAreaBox`)
- Show back/forward buttons (`ShowNavigationButtonsBox`)
- Show disk usage bar (`ShowDiskUsageBarBox`)
- Show file icons (`ShowFileIconsBox`)
- Show filename preview (`ShowFilenamePreviewBox`)
- Show function key bar (`ShowFunctionKeyBarBox`)
- Show log panel (`ShowLogPanelBox`)
- Show marked total size (`ShowMarkedTotalSizeBox`)
- Stable-state delay (ms) (`StableLiveUpdateIntervalMsBox`)
- Stable-state item threshold (`StableLiveMaxPendingBeforeApplyBox`)
- When switching workspaces (`WorkspaceSwitchBehaviorBox`)
- Zebra striping (alternating row colors) (`ZebraStripingBox`)

### View > Preview
- Allow recursive folder previews (`EnableRecursivePreviewBox`)
- Archive entry limit (`MaxArchiveEntriesBox`)
- Archive preview (`EnableArchivePreviewBox`)
- Cache network paths (`DiskCacheNetworkPathsBox`)
- Cancel outdated previews (`EnablePreviewCancellationBox`)
- Clear Rich Preview On Selection Change (`ClearRichPreviewOnSelectionChangeBox`)
- Default folder preview (`DefaultFolderPreviewModeBox`)
- Direction Aware Preload (`DirectionAwarePreloadBox`)
- Directory item limit (`MaxDirectoryPreviewItemsBox`)
- Disk cache limit (MB) (`DiskCacheMaxSizeMBBox`)
- Enable disk cache (`EnableDiskCacheBox`)
- Full-image decode pixel limit (`FullImageMaxDecodePixelsBox`)
- Image decode limit (bytes) (`MaxImageDecodeBytesBox`)
- Items to preload ahead (`PreloadForwardCountBox`)
- Items to preload behind (`PreloadBackwardCountBox`)
- Keep Previous Rich Preview While Loading (`KeepPreviousRichPreviewWhileLoadingBox`)
- Keyboard delay (ms) (`KeyboardDebounceMsBox`)
- Keyboard repeat suppression (ms) (`KeyboardRepeatSuppressMsBox`)
- Load image previews progressively (`EnableProgressiveImagePreviewBox`)
- Loading indicator delay (ms) (`LoadingIndicatorDelayMsBox`)
- Log Preview Pipeline Events (`LogPreviewPipelineEventsBox`)
- Markdown preview (`EnableMarkdownPreviewBox`)
- Memory cache limit (MB) (`PreviewCacheMemoryLimitBox`)
- Metadata Only For Network Paths (`MetadataOnlyForNetworkPathsBox`)
- Office item limit (`MaxOfficeItemsBox`)
- Office preview (`EnableOfficePreviewBox`)
- PDF page limit (`MaxPdfPagesBox`)
- PDF preview (`EnablePdfPreviewBox`)
- PDF render scale (`PdfRenderScaleBox`)
- Pointer delay (ms) (`PointerDebounceMsBox`)
- Prefer internal PDF renderer (`PreferInternalPdfRendererOverPlatformPdfPreviewBox`)
- Prefer platform preview for Office (`PreferPlatformPreviewForOfficeBox`)
- Preload file-size limit (MB) (`PreviewPreloadMaxFileSizeBox`)
- Preload nearby previews (`EnablePreviewPreloadBox`)
- Preload network paths (`PreviewPreloadNetworkPathsBox`)
- Preloaded item limit (`PreviewPreloadMaxItemsBox`)
- Preview cloud-only files (`CloudOnlyPreviewModeBox`)
- Preview delay (ms) (`RichPreviewDebounceMsBox`)
- Progressive preview pixel limit (`ProgressiveImageMaxPreviewPixelsBox`)
- Publish only the latest preview (`EnableLatestOnlyPublishBox`)
- Recursive item limit (`MaxRecursivePreviewItemsBox`)
- Rendered PDF preview (`EnableRenderedPdfPreviewBox`)
- Show Generation Ids (`ShowGenerationIdsBox`)
- Show Loading Indicator (`ShowPreviewLoadingIndicatorBox`)
- Show Preview Diagnostics Overlay (`ShowPreviewDiagnosticsOverlayBox`)
- Show Recursive Preview Progress (`ShowRecursivePreviewProgressBox`)
- Show a low-resolution image first (`EnableLowResolutionImageFirstBox`)
- Show platform preview diagnostics (`ShowPlatformPreviewDiagnosticsBox`)
- Suppress Rich Preview During Rapid Navigation (`SuppressRichPreviewDuringRapidNavigationBox`)
- Text preview limit (bytes) (`MaxTextPreviewBytesBox`)
- Use lightweight previews (`EnableLightweightPreviewBox`)
- Use platform previews (`EnablePlatformPreviewBackendBox`)
- Use rich previews (`EnableRichPreviewBox`)
- Use the preview pipeline (`EnablePreviewPipelineBox`)

## Commands

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

## Topics

### Archives

InsightFlow can open and create supported archive formats as folders. Choose extraction behavior and default formats in Settings > Search and Storage > Archives. For ordinary extraction, processing starts immediately when no name conflict exists; the first real conflict asks how to handle the remaining conflicts.

Use the archive context menu to inspect, extract, or create an archive. Detailed extraction options let you choose paths, filters, and compression settings.

### Bookmarks and Favorites

Favorites save folders for quick access. Bookmarks temporarily remember paths and can also mark individual items. Open Favorites from the toolbar or command palette, then choose an entry to navigate. Use bookmark commands to add, toggle, move to the next or previous bookmark, or open the bookmark list as a virtual folder.

### Context Menus

Right-click a file or folder to see its context menu. You can customize menu items in Settings > Input > Context Menus: choose a profile and context, add a built-in command or external tool, edit its label, and change its order. Preview the menu before saving. Changes apply to the matching context.

### Default Key Bindings

This page lists the built-in keyboard shortcuts. The Primary modifier means Ctrl on Windows and Linux, and Command on macOS. Customize ordinary shortcuts in Settings > Input > Key Bindings. Function-key layers are configured separately under Function Keys.

### Disk Usage

Use Disk Usage to scan a folder and understand where space is used. Open it from Tools or the command palette, select a folder, and start a scan. Results can be sorted and filtered; open a folder to inspect its contents, or use the treemap to compare large branches. Scan and cleanup behavior is configured under Settings > Jobs and Disk Usage.

### External Tools and Commands

Register an external tool in Settings > Integrations or create a custom command under Settings > Commands. Custom commands can receive the current item, marked items, active path, and other values through placeholders such as ${active.item.full}. Assign commands to a key or context menu when needed. Review the preview and working directory before running unfamiliar commands.

### File Operations

Select or mark files, then use Copy, Move, Rename, or Delete. Copy and move can target the other pane or a chosen folder. Conflicts are shown before replacement, and completed operations appear in the Jobs panel. Use Undo where available to reverse supported operations.

### File Search

Search finds files and folders by name. Choose a starting folder, enter a query, and narrow results with filters such as extension. Open a result or show the result set as a virtual folder. Search settings are available under Settings > Search and Storage > Snapshot Search.

### Folder Synchronization

Folder synchronization compares two folders and helps copy files that are missing or different. Choose the left and right folders, review the comparison, then select the direction and items to synchronize. Inspect conflicts before applying changes.

### Getting Started

InsightFlow is a dual-pane file manager. Each pane can browse folders independently; select a file to preview it, and use the other pane as a convenient copy or move destination. Use the menu or command palette to find commands. Press Ctrl+P on Windows/Linux or Command+P on macOS to open the palette.

### Git

Open the Git window for a repository to review changed files and commit history. Stage changes, enter a commit message, then commit. The history view supports branch navigation and commit inspection. Fetch, pull, push, merge, and other repository operations are available from the Git toolbar and context menus. Configure the executable and defaults in Settings > Integrations > Git.

### Jobs Panel

The Jobs panel shows running and completed file operations. Select a job to inspect its progress and details. Pause, resume, retry, cancel, or undo operations when those actions are available. Completed jobs can be removed from the list without changing the files.

### Keyboard Shortcuts

Use the command palette to find a command and its default shortcut. Primary means Ctrl on Windows/Linux and Command on macOS. Change ordinary shortcuts under Settings > Input > Key Bindings, and configure function-key layers under Settings > Input > Function Keys. Context menus and command help also show available commands.

### Manual Index

This manual covers navigation, search, file operations, previews, jobs, Git, and settings. Follow the topic links to learn a workflow. Use the in-app help search or ask the AI assistant where a setting or command is located.

### Navigation

Use the two panes to browse folders. Enter opens a folder or activates a file, and the parent command moves up. Favorites, bookmarks, path history, and tabs provide quick navigation. Open a path in the other pane or synchronize pane locations from the navigation commands.

### Remote Connections

Connect to a remote peer using the Remote tools. Add or select a connection, browse its folders, and transfer items between panes. Connection availability depends on the configured remote service. Keep credentials in the operating system credential store when available.

### SCOPY Copy Engine

SCOPY is an optional copy engine for file operations. InsightFlow can detect the bundled or configured SCOPY runtime and report its status. Choose the copy engine and concurrency under Settings > Jobs and Disk Usage > Background Jobs. Progress distinguishes preparation, transfer, and verification.

### Search File Contents

Grep searches text inside files, while file search matches names. Open Search > Grep or find Open Grep Window in the command palette. Choose a folder and query; regular expressions and extension filters are supported. Results are grouped by file, and selecting a matching line opens its file. Search behavior is configured in Settings > Integrations > Grep & History.

### Selection and Marks

The focused row is the current selection. Marks let you operate on several items together; toggle a mark on an item or mark all matching entries. Copy, move, rename, or delete acts on marked items when marks exist. Clear marks when you want commands to use only the current selection.

### Settings

Open Tools > Settings or search for Settings in the command palette. Settings are grouped by category and tab. Use the categories to configure appearance, input, integrations, commands, storage, jobs, updates, and diagnostics. The help index can search individual controls and open the matching tab.

### Shelf

The Shelf temporarily collects paths so you can work with them together. Add selected or marked items, open the Shelf to review its contents, and then use those paths as a source for supported operations. The Shelf is useful when source items come from different folders.

### Terminal

Open a terminal in the active folder using the configured terminal application. Configure the executable, arguments, and working-directory behavior in Settings > Integrations > Terminal. Use external tools or custom commands for repeatable terminal tasks.

### Views and Preview

Choose a list or grid view for each pane and adjust visible columns in Settings > View. Select an item to show its preview when preview is enabled. Text, images, documents, and folders use the available preview handlers. Cloud-only files are not downloaded just to generate a preview unless you explicitly request a download.

### Virtual Folders

A virtual folder presents a set of paths as a list without moving the original files. Search results and other generated lists can be opened this way. Use the list like a regular pane to select, mark, preview, or open an item. The source files remain in their original folders.

## Common questions

- Archives → 
- Bookmarks and Favorites → 
- Context Menus → 
- Default Key Bindings → 
- Disk Usage → 
- External Tools and Commands → 
- File Operations → 
- Folder Synchronization → 
- Getting Started → 
- Git → 
