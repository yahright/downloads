# InsightFlow Help 0.10.32 (en)

Generated: 2026-10-24 01:07 UTC

Give this document to an AI assistant such as NotebookLM, GitHub Copilot, or ChatGPT to ask questions about InsightFlow.

## Feature overview

### Work with two folders side by side

Browse different folders in the left and right panes, and keep more locations open in tabs. Keep both your source and destination in view.

Sort downloaded documents into a project folder in the other pane.

Open a folder in each pane. Navigation lock lets the panes follow corresponding subfolders together.

- Focus Other Pane (`FocusOtherPane`): Tab · View > Focus Other Pane
- Toggle Navigation Lock (`ToggleNavigationLock`): Ctrl+K

### Preview before opening

Inspect supported file types, including images, text, and PDFs, in a preview while you browse.

Find the right photo or document among files with similar names.

Select a file and enable preview. Preview as Hex provides read-only Hex/ASCII, search, offset navigation, and selection copying. Window and pinned previews are also available. Supported formats depend on your environment.

- Toggle Pane Preview (`TogglePanePreview`): F3 · View > Toggle Pane Preview
- Toggle Window Preview (`ToggleWindowPreview`): Shift+F3 · View > Toggle Window Preview
- Pin Window Preview (`PinWindowPreview`): 
- Preview as Hex (`PreviewAsHex`): View > Preview as Hex

### Jump to familiar places

Keep useful locations in favorites and bookmarks, revisit history, or register destinations in the Location Launcher.

Stop navigating through the same deep folder tree every day.

Use the Navigate menu to open favorites or bookmarks. Register your current location and select it from the list next time.

- Show Favorites (`ShowFavorites`): J · Go > Favorites > Show Favorites
- Show Bookmarks (`ShowBookmarks`): Ctrl+Shift+D · Go > Bookmarks > Show Bookmarks
- History (`ShowHistory`): H · Go > History

### Save a workspace

Save your pane and tab state as a workspace and return to it after switching to another task.

Switch between the folders you use for work documents and those for photos.

Open the folders for your task, save a workspace, and open it when needed.

- Save Workspace... (`SaveWorkspace`): Ctrl+S · File > Save Workspace...
- Open Workspace... (`OpenWorkspace`): Ctrl+O · File > Open Workspace...
- Manage Workspaces... (`ManageWorkspaces`): Ctrl+Shift+O · File > Manage Workspaces...

### Find files by name and size

Search below the current folder and narrow results by name or extension. The results pane also supports minimum and maximum file sizes.

Find PDFs of at least 10 MB under a project folder.

Open Recursive Search from Search. Enter a value such as 10 MB in the results size fields and press Enter. Size filters exclude directories. Clear Results empties the list without deleting files.

- Recursive Search (`ShowRecursiveSearch`): Ctrl+F · Search > Recursive Search

### Search inside files

Use Grep to search text content. Find candidates by words inside them even when you do not know the filename.

Locate a name in configuration files or source code.

Open Grep from Search and choose your query and scope. Navigate to matching files from the results. New Search keeps the previous results while you enter another query for the same folder.

- Open Grep Window (`OpenGrepWindow`): Search > Grep

### See subfolders in one list

Flat view gathers files from subfolders into a list so you can inspect them without opening each level.

Look across files organized into separate monthly folders.

Open the parent folder and toggle flat view. Enumerating a large folder may take time.

- Toggle Flat View (`ToggleFlatView`): Shift+F

### Collect files without moving them

Virtual folders collect references to files from different locations. Smart folders re-evaluate saved conditions each time you open them.

Keep a reusable list such as recently modified audio files.

Create a virtual folder and add selected items, or create a smart folder with name, type, size, and date conditions. The original files stay in place.

- New Virtual Folder (`CreateVirtualList`): Ctrl+Shift+N · Tools > Virtual List > New Virtual Folder
- New Smart Folder... (`CreateSmartFolder`): Edit > New Smart Folder...
- Open Virtual Folder Manager (`OpenVirtualFolderManager`): Ctrl+Shift+J · Go > Virtual Folders

### Keep files on the Shelf

Keep a temporary collection while browsing other locations, then copy or move the collected items together.

Gather the documents you want to send from several folders.

Add selected items to the Shelf, review the collection, and choose a destination. Adding items alone does not move them.

- Add to Shelf (`AddToShelf`): V · Tools > Shelf > Add Selection to Shelf
- Shelf: View Contents (`ToggleShelf`): Ctrl+Shift+V · Tools > Shelf > Show Shelf
- Shelf: Copy to Other Pane (`ShelfCopyToOtherPane`): Tools > Shelf > Copy Shelf to Other Pane

### Act on marked files together

Copy, move, or delete marked items together. Supported operations appear as jobs with progress information.

Copy only selected documents to another folder and inspect the outcome.

Mark the items and invoke copy or move. The copy dialog lets you review the destination and choose SCOPY Speed, SCOPY Safe, or Standard. Undo must be enabled in settings and cannot reverse every operation.

- Copy (`Copy`): C · File > Copy to Other Pane
- Move (`Move`): M · File > Move
- Show Jobs (`ShowJobs`): Ctrl+J · Tools > Jobs > Show Jobs
- File Operation History... (`ShowOperationHistory`): Ctrl+Shift+Z · Edit > File Operation History...

### Rename files in batches

Rename multiple files with batch rename and reuse rules as presets.

Give photos or documents a consistent naming pattern.

Select items, open batch rename, and review the resulting names before applying. Actions for folder contents and recursive scopes are also available.

- Batch Rename (`BatchRename`): Shift+R · File > Batch Rename

### Browse and extract archives

Browse ZIP and 7z contents like folders, extract archives, and create compressed files. Creation and extraction of tar.zst are also supported.

Inspect a received ZIP before extracting it.

Open an archive or use the archive actions in the File menu. 7z and zstd require external tools. tar.zst cannot be browsed as a folder.

- Open as Folder (`OpenAsFolder`): Ctrl+Shift+Enter · File > Open as Folder

### See where disk space goes

Inspect disk usage in tables or a treemap to find large folders and files.

Understand what is using space by comparing folder sizes.

Open Disk Usage or its treemap from Tools. Below the root paths, use Up one level, Volume root, Choose folders, or Edit paths to change the target before starting a new scan. Cancelling retains results found so far; totals marked as incomplete are not a full scan.

- Disk Usage Raw Table (`DiskUsageRawTable`): Ctrl+U · Tools > Disk Usage
- Disk Usage Tree Map (`DiskUsageTreeMap`): Tools > Disk Usage Tree Map
- Calculate Folder Sizes (`CalculateFolderSizes`): Ctrl+Shift+U

### Find duplicate files

Find duplicate candidates and compare the results before choosing which copies to keep.

Check documents copied into several folders for duplicates.

Open Find Duplicate Files from Tools and choose the scope. Review the results before selecting items or moving them to the Trash.

- Find Duplicate Files (`DuplicateFinderDialog`): Tools > Find Duplicate Files

### Compare and synchronize folders

Compare folders and apply a synchronization plan. Comparisons use file size and modification time.

Apply new and modified files from a working folder to a destination.

Open Folder Sync from Tools and review the source, destination, and mode. Inspect the plan carefully when the mode includes deletions.

- Folder Sync (`FolderSyncDialog`): Tools > Folder Sync

### Compute and verify checksums

Compare file contents using checksums, useful for checking received or copied files.

Compare a downloaded file with a checksum supplied by its publisher.

Select the file and compute or verify its checksum using the same algorithm as the reference value.

- Compute Checksum... (`ComputeChecksum`): Ctrl+Shift+K
- Verify Checksum... (`VerifyChecksum`): 

### Inspect Git changes and history

Inspect repository status, diffs, and history, and manage staging from the Git window.

Review edited files and choose changes to commit.

Open a repository and show the Git window. Git must be set up in your environment. Check the remote and branch before remote operations.

- Open Git Window (`OpenGitWindow`): G · Git > Git Window
- Git Stage All (`GitStageAll`): Git > Git Stage All
- Git Commit (`GitCommit`): Git > Git Commit

### Run a command in the current folder

Run shell commands from a one-line command bar beneath the panes, or open an external terminal or registered tool.

Run a build or conversion command while keeping the file list in view.

Press Ctrl+Shift+T (Cmd+Shift+T on macOS). Commands run in the active pane's folder, then both panes refresh. Shift+Enter hands the command to an external terminal.

- Command Bar: Toggle (`ToggleCommandBar`): Ctrl+Shift+T · View > Show Command Bar
- Open Terminal Here (`OpenTerminalHere`): Tools > Terminal > Open Terminal Here
- Manage External Tools (`ManageExternalTools`): Tools > Run > Manage External Tools

### Ask an AI while browsing files

Use the right-side AI chat with context from the current folder and marked files. File lists returned by the AI can be added to the Shelf or marked in a pane.

Ask about selected documents and collect suggested files in a list.

Enable AI Chat in settings and separately install and authenticate a supported agent. Chat is off by default. Review context chips before sending and remove unwanted items. Settings control which InsightFlow operations the AI may use.

- AI Chat: Toggle Panel (`ToggleAiChatPanel`): Ctrl+Shift+I · View > Show AI Chat

### Keep track of background work

Inspect copy, search, and other jobs. Supported operations allow pause, resume, cancellation, and retries of failed items.

Browse another folder while a large copy finishes.

Select a job to view progress, details, and results. Available actions depend on the job type and state.

- Show Jobs (`ShowJobs`): Ctrl+J · Tools > Jobs > Show Jobs
- Retry Failed Only (`RetryFailedOnly`): Tools > Jobs > Retry Failed Only

### Make it fit the way you work

Customize themes, columns, key bindings, external tools, and context menus. Find settings through the command palette.

Assign a key to a frequent action or adjust the display for readability.

Open Settings or type a setting name into the palette. Start with the defaults and adjust what you need.

- Settings (`Settings`): Ctrl+, · Tools > Settings
- Command Palette (`ShowCommandPalette`): Ctrl+P · Help > Command Palette
- Toggle Dark/Light Theme (`ToggleDarkLightTheme`): View > Theme > Toggle Dark / Light

### Find help and check for updates

Discover features here, then use Command Help or the AI help files for details. Update checks are also in the Help menu.

Look up an action or setting, or find out whether a newer version is available.

Use the Help menu. With automatic checking enabled, checks occur at startup and about every four hours, with up to five minutes of jitter. Apply an update through the update dialog after notification.

- Feature Guide (`OpenFeatureGuide`): Help > Feature Guide
- Toggle Command Help (`ToggleCommandHelp`): Ctrl+H · Help > Command Help
- Open AI Help Files (`RevealHelpBundle`): Help > Open AI Help Files...
- Check for Updates (`CheckForUpdates`): Help > Check for Updates

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
- Allow local Controller connections (`AutomationEnabledBox`)
- Interface language (`InterfaceLanguageBox`)

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

### AI Chat
- **AI Chat: Toggle Panel** (`ToggleAiChatPanel`) — keys: `{"windows":["Ctrl\u002BShift\u002BI"],"mac":["Ctrl\u002BShift\u002BI"]}`; menu: View > Show AI Chat; 

### Appearance
- **Theme: Dark** (`ThemeDark`) — keys: `{"windows":[],"mac":[]}`; menu: View > Theme > Dark; 
- **Theme: Light** (`ThemeLight`) — keys: `{"windows":[],"mac":[]}`; menu: View > Theme > Light; 
- **Theme: System** (`ThemeSystem`) — keys: `{"windows":[],"mac":[]}`; menu: View > Theme > System; 
- **Toggle Dark/Light Theme** (`ToggleDarkLightTheme`) — keys: `{"windows":[],"mac":[]}`; menu: View > Theme > Toggle Dark / Light; 

### Application
- **About** (`ShowAbout`) — keys: `{"windows":[],"mac":[]}`; menu: Help > About; 
- **Cancel** (`Cancel`) — keys: `{"windows":[],"mac":[]}`; menu: ; Cancel the current long-running operation.
- **Check for Updates** (`CheckForUpdates`) — keys: `{"windows":[],"mac":[]}`; menu: Help > Check for Updates; 
- **Export Workspace** (`ExportWorkspace`) — keys: `{"windows":[],"mac":[]}`; menu: File > Export Workspace...; 
- **Feature Guide** (`OpenFeatureGuide`) — keys: `{"windows":[],"mac":[]}`; menu: Help > Feature Guide; Open the offline feature guide in the default browser.
- **Import Workspace** (`ImportWorkspace`) — keys: `{"windows":[],"mac":[]}`; menu: File > Import Workspace...; 
- **Keyboard Help** (`ShowKeyboardHelp`) — keys: `{"windows":[],"mac":[]}`; menu: Help > Keyboard Help; Open the keyboard shortcut dialog.
- **Manage Workspaces...** (`ManageWorkspaces`) — keys: `{"windows":["Ctrl\u002BShift\u002BO"],"mac":["\u2318\u002BShift\u002BO"]}`; menu: File > Manage Workspaces...; Rename or delete saved named workspaces.
- **Online Manual** (`OpenOnlineManual`) — keys: `{"windows":[],"mac":[]}`; menu: Help > Online Manual; Open the published InsightFlow manual in the default browser.
- **Open AI Help Files** (`RevealHelpBundle`) — keys: `{"windows":[],"mac":[]}`; menu: Help > Open AI Help Files...; Show the bundled English and Japanese AI-readable help files.
- **Open Workspace...** (`OpenWorkspace`) — keys: `{"windows":["Ctrl\u002BO"],"mac":["\u2318\u002BO"]}`; menu: File > Open Workspace...; Open a previously saved named workspace.
- **Portable Package Export** (`PackageExport`) — keys: `{"windows":[],"mac":[]}`; menu: File > Portable Package Export...; Create a portable package containing the app, config, tools, plugins, scripts, and optional runtime data.
- **Quit** (`Quit`) — keys: `{"windows":[],"mac":[]}`; menu: File > Quit; 
- **Save Workspace...** (`SaveWorkspace`) — keys: `{"windows":["Ctrl\u002BS"],"mac":["\u2318\u002BS"]}`; menu: File > Save Workspace...; Save the current tabs and layout as a named workspace.
- **Send Current Job To Background** (`SendCurrentJobToBackground`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Jobs > Send Current Job to Background; Send the current long operation to the background.
- **Send Feedback** (`SendFeedback`) — keys: `{"windows":[],"mac":[]}`; menu: Help > Send Feedback / Report Issue; 
- **Settings** (`Settings`) — keys: `{"windows":["Ctrl\u002B,"],"mac":["\u2318\u002B,"]}`; menu: Tools > Settings; Open application settings.
- **Toggle Command Help** (`ToggleCommandHelp`) — keys: `{"windows":["Ctrl\u002BH"],"mac":["Ctrl\u002BH"]}`; menu: Help > Command Help; Open or focus the command help window.
- **Toggle Command Log Panel** (`ToggleCommandLogPanel`) — keys: `{"windows":["Ctrl\u002BShift\u002BL"],"mac":["Ctrl\u002BShift\u002BL"]}`; menu: View > Toggle Command Log Panel; Show or hide the command log panel.

### Archive
- **Compress to 7z** (`CompressToSevenZip`) — keys: `{"windows":[],"mac":[]}`; menu: File > Archive > Compress to 7z; 
- **Compress to ZIP** (`CompressToZip`) — keys: `{"windows":[],"mac":[]}`; menu: File > Archive > Compress to ZIP; 
- **Compress to tar.zst** (`CompressToTarZstd`) — keys: `{"windows":[],"mac":[]}`; menu: File > Archive > Compress to tar.zst; 
- **Compress...** (`CompressAdvanced`) — keys: `{"windows":[],"mac":[]}`; menu: File > Archive > Compress...; 
- **Extract Here** (`ExtractHere`) — keys: `{"windows":[],"mac":[]}`; menu: File > Archive > Extract Here; 
- **Extract To...** (`ExtractTo`) — keys: `{"windows":[],"mac":[]}`; menu: File > Archive > Extract To...; 
- **Extract to Archive Directory** (`ExtractToArchiveDirectory`) — keys: `{"windows":[],"mac":[]}`; menu: File > Archive > Extract to Archive Folder; 
- **Extract...** (`ExtractAdvanced`) — keys: `{"windows":[],"mac":[]}`; menu: File > Archive > Extract...; 

### Bookmarks
- **Add Bookmark** (`AddBookmark`) — keys: `{"windows":["Ctrl\u002BD"],"mac":["Ctrl\u002BD"]}`; menu: Go > Bookmarks > Add Bookmark; Add the selected item, or current folder, as a temporary navigation bookmark.
- **Next Bookmark** (`NextBookmark`) — keys: `{"windows":["Alt\u002B]","F2"],"mac":["Option\u002B]","F2"]}`; menu: Go > Bookmarks > Next Bookmark; Jump to the next bookmark, wrapping at the end.
- **Open Bookmark List** (`OpenBookmarkList`) — keys: `{"windows":["Ctrl\u002BB"],"mac":["Ctrl\u002BB"]}`; menu: Go > Bookmarks > Open Bookmark List; Open the bookmark list as a virtual list; the opposite pane follows the selection.
- **Previous Bookmark** (`PreviousBookmark`) — keys: `{"windows":["Alt\u002BOem4","Shift\u002BF2"],"mac":["Option\u002BOem4","Shift\u002BF2"]}`; menu: Go > Bookmarks > Previous Bookmark; Jump to the previous bookmark, wrapping at the start.
- **Remove Bookmark** (`RemoveBookmark`) — keys: `{"windows":[],"mac":[]}`; menu: Go > Bookmarks > Remove Bookmark; Remove the bookmark for the selected item or current folder.
- **Show Bookmarks** (`ShowBookmarks`) — keys: `{"windows":["Ctrl\u002BShift\u002BD"],"mac":["Ctrl\u002BShift\u002BD"]}`; menu: Go > Bookmarks > Show Bookmarks; Open bookmarks and jump to one.
- **Toggle BookMark** (`ToggleBookMark`) — keys: `{"windows":["B"],"mac":["B"]}`; menu: Go > Bookmarks > Toggle BookMark; Add or remove the selected item, or current folder, from bookmarks.

### Commands
- **Command Palette** (`ShowCommandPalette`) — keys: `{"windows":["Ctrl\u002BP"],"mac":["\u2318\u002BP"]}`; menu: Help > Command Palette; Search and run any command.

### Diagnostics
- **Check Shell Integration** (`CheckShellIntegration`) — keys: `{"windows":[],"mac":[]}`; menu: Help > Diagnostics > Check Shell Integration; Run Windows shell context menu surrogate diagnostics.
- **Disable All Debug Logs** (`DisableAllDebugLogs`) — keys: `{"windows":[],"mac":[]}`; menu: Help > Diagnostics > Disable All Debug Logs; 
- **Toggle AI Debug Log** (`ToggleAiDebugLog`) — keys: `{"windows":[],"mac":[]}`; menu: Help > Diagnostics > Toggle AI Debug Log; 
- **Toggle Command Log** (`ToggleCommandLog`) — keys: `{"windows":[],"mac":[]}`; menu: Help > Diagnostics > Toggle Command Log; 
- **Toggle Key Debug Log** (`ToggleKeyDebugLog`) — keys: `{"windows":[],"mac":[]}`; menu: Help > Diagnostics > Toggle Key Debug Log; 
- **Toggle Pane Debug Log** (`TogglePaneDebugLog`) — keys: `{"windows":[],"mac":[]}`; menu: Help > Diagnostics > Toggle Pane Debug Log; 
- **Toggle Performance Log** (`TogglePerformanceLog`) — keys: `{"windows":[],"mac":[]}`; menu: Help > Diagnostics > Toggle Performance Log; 

### Disk
- **Disk Usage Raw Table** (`DiskUsageRawTable`) — keys: `{"windows":["Ctrl\u002BU"],"mac":["\u2318\u002BU"]}`; menu: Tools > Disk Usage; 
- **Disk Usage Tree Map** (`DiskUsageTreeMap`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Disk Usage Tree Map; 

### Favorites
- **Add Favorite** (`AddFavorite`) — keys: `{"windows":["=","Add","\u002B"],"mac":["=","Add","\u002B"]}`; menu: Go > Favorites > Add Favorite; Add current folder or selection to favorites.
- **Show Favorites** (`ShowFavorites`) — keys: `{"windows":["J"],"mac":["J"]}`; menu: Go > Favorites > Show Favorites; Open favorites and jump to one.

### File
- **Batch Rename** (`BatchRename`) — keys: `{"windows":["Shift\u002BR"],"mac":["Shift\u002BR"]}`; menu: File > Batch Rename; Batch rename selected or marked items with rule pipeline preview.
- **Batch Rename Folder Contents** (`BatchRename`) — keys: `{"windows":["Shift\u002BR"],"mac":["Shift\u002BR"]}`; menu: File > Batch Rename; Batch rename selected or marked items with rule pipeline preview.
- **Batch Rename Recursively (Files + Folders)** (`BatchRename`) — keys: `{"windows":["Shift\u002BR"],"mac":["Shift\u002BR"]}`; menu: File > Batch Rename; Batch rename selected or marked items with rule pipeline preview.
- **Batch Rename Recursively (Files Only)** (`BatchRename`) — keys: `{"windows":["Shift\u002BR"],"mac":["Shift\u002BR"]}`; menu: File > Batch Rename; Batch rename selected or marked items with rule pipeline preview.
- **Calculate Folder Sizes** (`CalculateFolderSizes`) — keys: `{"windows":["Ctrl\u002BShift\u002BU"],"mac":["\u2318\u002BShift\u002BU"]}`; menu: ; Calculate folder sizes for the active pane.
- **Compute Checksum...** (`ComputeChecksum`) — keys: `{"windows":["Ctrl\u002BShift\u002BK"],"mac":["\u2318\u002BShift\u002BK"]}`; menu: ; Compute checksums for the selected or marked items.
- **Context Menu** (`ShowFileListContextMenu`) — keys: `{"windows":["Z"],"mac":["Z"]}`; menu: File > Information > Context Menu; Show the same context menu used by right-clicking the file list.
- **Copy** (`Copy`) — keys: `{"windows":["C","F5"],"mac":["C","F5"]}`; menu: File > Copy to Other Pane; Copy selected or marked items to the other pane.
- **Copy Marked Names** (`CopyMarkedNames`) — keys: `{"windows":["Ctrl\u002BShift\u002BY"],"mac":["Ctrl\u002BShift\u002BY"]}`; menu: Edit > Copy Special > Copy Marked Names; Copy marked file or folder names to the clipboard.
- **Copy Marked Paths** (`CopyMarkedPaths`) — keys: `{"windows":["Shift\u002BY"],"mac":["Shift\u002BY"]}`; menu: Edit > Copy Special > Copy Marked Paths; Copy marked full paths to the clipboard.
- **Copy Name** (`CopySelectedName`) — keys: `{"windows":["Ctrl\u002BY"],"mac":["Ctrl\u002BY"]}`; menu: Edit > Copy Special > Copy Name; Copy the selected file or folder name to the clipboard.
- **Copy Parent Path** (`CopySelectedParentPath`) — keys: `{"windows":[],"mac":[]}`; menu: Edit > Copy Special > Copy Parent Path; 
- **Copy Path** (`CopySelectedPath`) — keys: `{"windows":["Y"],"mac":["Y"]}`; menu: Edit > Copy Special > Copy Path; Copy the selected full path to the clipboard.
- **Copy Path As Command Argument** (`CopyPathAsCommandArgument`) — keys: `{"windows":[],"mac":[]}`; menu: Edit > Copy Special > Copy Path as Command Argument; Copy selected or marked paths as quoted command arguments.
- **Copy Path Unquoted** (`CopySelectedPathUnquoted`) — keys: `{"windows":[],"mac":[]}`; menu: Edit > Copy Special > Copy Path Unquoted; Copy the selected full path to the clipboard without wrapping it in quotes.
- **Copy To...** (`CopyTo`) — keys: `{"windows":[],"mac":[]}`; menu: File > Copy To...; Copy selected or marked items to a chosen destination folder.
- **Copy with Filter...** (`CopyWithOptions`) — keys: `{"windows":["Shift\u002BF5"],"mac":["Shift\u002BF5"]}`; menu: ; Copy selected or marked items using extension and folder filters.
- **Delete Permanently** (`DeleteForce`) — keys: `{"windows":["Shift\u002BD","Shift\u002BDelete"],"mac":["Shift\u002BD","Shift\u002BDelete"]}`; menu: File > Delete Permanently; Delete selected or marked items permanently after confirmation (Shift+D or Shift+Del).
- **Explorer Menu** (`ShowShellContextMenu`) — keys: `{"windows":["Shift\u002BZ"],"mac":["Shift\u002BZ"]}`; menu: File > Information > Explorer Menu; Show the native shell context menu for the selected or marked items.
- **File Operation History...** (`ShowOperationHistory`) — keys: `{"windows":["Ctrl\u002BShift\u002BZ"],"mac":["\u2318\u002BShift\u002BZ"]}`; menu: Edit > File Operation History...; Show journaled file operations, including entries that cannot be safely undone.
- **Find Duplicate Files** (`DuplicateFinderDialog`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Find Duplicate Files; Scan folders for duplicate files by name, size, or content and review before deleting.
- **Folder Information** (`ShowFolderInformation`) — keys: `{"windows":[],"mac":[]}`; menu: File > Information > Folder Information...; Show lightweight counts, extension stats, and CSV export for the current view or selected folder.
- **Folder Sync** (`FolderSyncDialog`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Folder Sync; Compare two local folders and queue reviewed update or mirror actions.
- **Information** (`ShowProperties`) — keys: `{"windows":["I"],"mac":["I"]}`; menu: File > Information > Information...; Show InsightFlow information for the active or marked item(s).
- **Make Directory** (`MkDir`) — keys: `{"windows":["K","F7"],"mac":["K","F7"]}`; menu: File > Make Directory; Create a new folder in the active pane.
- **Move** (`Move`) — keys: `{"windows":["M","F6"],"mac":["M","F6"]}`; menu: File > Move; Move selected or marked items to the other pane.
- **Move To...** (`MoveTo`) — keys: `{"windows":[],"mac":[]}`; menu: File > Move To...; Move selected or marked items to a chosen destination folder.
- **Move to Trash** (`Delete`) — keys: `{"windows":["D","Delete","F8"],"mac":["D","Delete","F8"]}`; menu: File > Move to Trash; Move selected or marked items to trash (confirms).
- **New Text File** (`CreateTextFile`) — keys: `{"windows":["Shift\u002BE"],"mac":["Shift\u002BE"]}`; menu: File > New Text File; Create a new empty text file here.
- **Open in External Explorer/Finder** (`OpenActiveFolderExternally`) — keys: `{"windows":[],"mac":[]}`; menu: File > Open in File Manager; 
- **Open in Text Editor** (`OpenInTextEditor`) — keys: `{"windows":["E"],"mac":["E"]}`; menu: File > Open in Text Editor; Open the selected file in the configured text editor.
- **Paste** (`Paste`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **Path Stock: Clear** (`ClearPathStock`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Path Stock > Clear Path Stock; Clear the session-only path stock history.
- **Path Stock: View Contents** (`TogglePathStock`) — keys: `{"windows":["Ctrl\u002BShift\u002BC"],"mac":["Ctrl\u002BShift\u002BC"]}`; menu: Tools > Path Stock > Show Path Stock; Show recent path text payloads copied by InsightFlow.
- **Properties** (`ShellOpenProperties`) — keys: `{"windows":["Alt\u002BEnter"],"mac":["Option\u002BEnter"]}`; menu: File > Information > System Properties; Open the operating system Properties dialog for the active or marked item(s).
- **Rename** (`Rename`) — keys: `{"windows":["R"],"mac":["R"]}`; menu: File > Rename; Rename the selected file or folder.
- **Toggle Read-Only** (`ToggleReadOnly`) — keys: `{"windows":[],"mac":[]}`; menu: File > Toggle Read-Only; 
- **Undo File Operation** (`UndoFileOperation`) — keys: `{"windows":["Ctrl\u002BZ"],"mac":["\u2318\u002BZ"]}`; menu: Edit > Undo File Operation; Safely undo the most recent eligible copy, move, rename, or folder creation.
- **Verify Checksum...** (`VerifyChecksum`) — keys: `{"windows":[],"mac":[]}`; menu: ; Verify selected items against a checksum manifest file.

### Git
- **Git Commit** (`GitCommit`) — keys: `{"windows":[],"mac":[]}`; menu: Git > Git Commit; Commit staged changes (opens commit flow).
- **Git Diff** (`GitDiff`) — keys: `{"windows":[],"mac":[]}`; menu: Git > Git Diff; Show diff for the selected or focused file.
- **Git Log** (`GitLog`) — keys: `{"windows":[],"mac":[]}`; menu: Git > Git Log; Show history for the current context.
- **Git Pull** (`GitPull`) — keys: `{"windows":[],"mac":[]}`; menu: Git > Git Pull; Pull from the remote.
- **Git Push** (`GitPush`) — keys: `{"windows":[],"mac":[]}`; menu: Git > Git Push; Push to the remote.
- **Git SVN DCommit** (`GitSvnDCommit`) — keys: `{"windows":[],"mac":[]}`; menu: ; git svn dcommit (SVN bridge).
- **Git SVN Fetch** (`GitSvnFetch`) — keys: `{"windows":[],"mac":[]}`; menu: ; git svn fetch (SVN bridge).
- **Git Stage All** (`GitStageAll`) — keys: `{"windows":[],"mac":[]}`; menu: Git > Git Stage All; Stage all changes.
- **Git Stage Toggle** (`GitToggleStage`) — keys: `{"windows":[],"mac":[]}`; menu: Git > Git Stage Toggle; Stage or unstage the selected file.
- **Git Unstage All** (`GitUnstageAll`) — keys: `{"windows":[],"mac":[]}`; menu: Git > Git Unstage All; Unstage everything.
- **Open Git Window** (`OpenGitWindow`) — keys: `{"windows":["G"],"mac":["G"]}`; menu: Git > Git Window; Open the Git tool window for this repo.
- **Open Repository List** (`OpenRepositoryList`) — keys: `{"windows":[],"mac":[]}`; menu: Git > Repository List; Open the repository list launcher to pick a repository to open in its own Git window.
- **Refresh Git Scope** (`RefreshGitScope`) — keys: `{"windows":["Ctrl\u002BG"],"mac":["\u2318\u002BG"]}`; menu: Git > Refresh Git Scope; Refresh Git status and file lists.
- **Register Repository** (`RegisterRepository`) — keys: `{"windows":[],"mac":[]}`; menu: Git > Register Repository; Register the current folder in the repository ledger.
- **Scan Folder for Repositories** (`ScanRepositoriesInFolder`) — keys: `{"windows":[],"mac":[]}`; menu: Git > Scan Folder for Repositories; Scan the current folder for nested git repositories and register them.
- **Show Git Scope** (`ShowGitScope`) — keys: `{"windows":[],"mac":[]}`; menu: Git > Show Git Scope; Show Git scope / staged view in the UI.

### Jobs
- **Clear Finished Jobs** (`ClearFinishedJobs`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Jobs > Clear Finished Jobs; Remove finished jobs from the jobs list.
- **Retry Failed Only** (`RetryFailedOnly`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Jobs > Retry Failed Only; Retry only failed steps of a job.
- **Retry Job** (`RetryJob`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Jobs > Retry Selected Job; Retry a selected failed job.
- **Show Jobs** (`ShowJobs`) — keys: `{"windows":["Ctrl\u002BJ"],"mac":["\u2318\u002BJ"]}`; menu: Tools > Jobs > Show Jobs; Open the background jobs panel.

### Labels
- **Assign Label** (`AssignLabel`) — keys: `{"windows":["Alt\u002BD1","Alt\u002BD2","Alt\u002BD3","Alt\u002BD4","Alt\u002BD5","Alt\u002BD6","Alt\u002BD7"],"mac":["Option\u002BD1","Option\u002BD2","Option\u002BD3","Option\u002BD4","Option\u002BD5","Option\u002BD6","Option\u002BD7"]}`; menu: Edit > Labels > Assign Label > Important; 
- **Assign Label: Archive** (`AssignLabel`) — keys: `{"windows":["Alt\u002BD1","Alt\u002BD2","Alt\u002BD3","Alt\u002BD4","Alt\u002BD5","Alt\u002BD6","Alt\u002BD7"],"mac":["Option\u002BD1","Option\u002BD2","Option\u002BD3","Option\u002BD4","Option\u002BD5","Option\u002BD6","Option\u002BD7"]}`; menu: Edit > Labels > Assign Label > Important; 
- **Assign Label: Done** (`AssignLabel`) — keys: `{"windows":["Alt\u002BD1","Alt\u002BD2","Alt\u002BD3","Alt\u002BD4","Alt\u002BD5","Alt\u002BD6","Alt\u002BD7"],"mac":["Option\u002BD1","Option\u002BD2","Option\u002BD3","Option\u002BD4","Option\u002BD5","Option\u002BD6","Option\u002BD7"]}`; menu: Edit > Labels > Assign Label > Important; 
- **Assign Label: Important** (`AssignLabel`) — keys: `{"windows":["Alt\u002BD1","Alt\u002BD2","Alt\u002BD3","Alt\u002BD4","Alt\u002BD5","Alt\u002BD6","Alt\u002BD7"],"mac":["Option\u002BD1","Option\u002BD2","Option\u002BD3","Option\u002BD4","Option\u002BD5","Option\u002BD6","Option\u002BD7"]}`; menu: Edit > Labels > Assign Label > Important; 
- **Assign Label: Later** (`AssignLabel`) — keys: `{"windows":["Alt\u002BD1","Alt\u002BD2","Alt\u002BD3","Alt\u002BD4","Alt\u002BD5","Alt\u002BD6","Alt\u002BD7"],"mac":["Option\u002BD1","Option\u002BD2","Option\u002BD3","Option\u002BD4","Option\u002BD5","Option\u002BD6","Option\u002BD7"]}`; menu: Edit > Labels > Assign Label > Important; 
- **Assign Label: Reference** (`AssignLabel`) — keys: `{"windows":["Alt\u002BD1","Alt\u002BD2","Alt\u002BD3","Alt\u002BD4","Alt\u002BD5","Alt\u002BD6","Alt\u002BD7"],"mac":["Option\u002BD1","Option\u002BD2","Option\u002BD3","Option\u002BD4","Option\u002BD5","Option\u002BD6","Option\u002BD7"]}`; menu: Edit > Labels > Assign Label > Important; 
- **Assign Label: Review** (`AssignLabel`) — keys: `{"windows":["Alt\u002BD1","Alt\u002BD2","Alt\u002BD3","Alt\u002BD4","Alt\u002BD5","Alt\u002BD6","Alt\u002BD7"],"mac":["Option\u002BD1","Option\u002BD2","Option\u002BD3","Option\u002BD4","Option\u002BD5","Option\u002BD6","Option\u002BD7"]}`; menu: Edit > Labels > Assign Label > Important; 
- **Assign Label: Waiting** (`AssignLabel`) — keys: `{"windows":["Alt\u002BD1","Alt\u002BD2","Alt\u002BD3","Alt\u002BD4","Alt\u002BD5","Alt\u002BD6","Alt\u002BD7"],"mac":["Option\u002BD1","Option\u002BD2","Option\u002BD3","Option\u002BD4","Option\u002BD5","Option\u002BD6","Option\u002BD7"]}`; menu: Edit > Labels > Assign Label > Important; 
- **Clear Labels** (`ClearLabels`) — keys: `{"windows":[],"mac":[]}`; menu: Edit > Labels > Clear Labels; 
- **Remove Label** (`RemoveLabel`) — keys: `{"windows":[],"mac":[]}`; menu: Edit > Labels > Remove Label > Important; 
- **Toggle Label** (`ToggleLabel`) — keys: `{"windows":[],"mac":[]}`; menu: Edit > Labels > Toggle Label > Important; 
- **Toggle Label: Archive** (`ToggleLabel`) — keys: `{"windows":[],"mac":[]}`; menu: Edit > Labels > Toggle Label > Important; 
- **Toggle Label: Done** (`ToggleLabel`) — keys: `{"windows":[],"mac":[]}`; menu: Edit > Labels > Toggle Label > Important; 
- **Toggle Label: Important** (`ToggleLabel`) — keys: `{"windows":[],"mac":[]}`; menu: Edit > Labels > Toggle Label > Important; 
- **Toggle Label: Later** (`ToggleLabel`) — keys: `{"windows":[],"mac":[]}`; menu: Edit > Labels > Toggle Label > Important; 
- **Toggle Label: Reference** (`ToggleLabel`) — keys: `{"windows":[],"mac":[]}`; menu: Edit > Labels > Toggle Label > Important; 
- **Toggle Label: Review** (`ToggleLabel`) — keys: `{"windows":[],"mac":[]}`; menu: Edit > Labels > Toggle Label > Important; 
- **Toggle Label: Waiting** (`ToggleLabel`) — keys: `{"windows":[],"mac":[]}`; menu: Edit > Labels > Toggle Label > Important; 

### Navigation
- **Bottom** (`MoveToBottom`) — keys: `{"windows":["Ctrl\u002BEnd","Ctrl\u002BDown"],"mac":["Ctrl\u002BEnd","\u2318\u002BDown"]}`; menu: Go > Cursor > Bottom; Jump selection to the last visible row.
- **Connect to Remote Peer** (`ConnectToRemote`) — keys: `{"windows":[],"mac":[]}`; menu: File > Connect to Remote...; Connect to a registered InsightFlow remote peer (IFRP), open it, and register it to the Location Launcher.
- **Connect to Server** (`ConnectToServer`) — keys: `{"windows":[],"mac":[]}`; menu: File > Connect to Server; Connect to a network server (SMB) and open it in the active pane.
- **Down** (`Down`) — keys: `{"windows":["N"],"mac":["N"]}`; menu: Go > Cursor > Down; Move selection to the next row.
- **First File** (`MoveToFirstFile`) — keys: `{"windows":["Shift\u002BN"],"mac":["Shift\u002BN"]}`; menu: Go > Cursor > First File; Jump to the first file (skip dirs where applicable).
- **History** (`ShowHistory`) — keys: `{"windows":["H"],"mac":["H"]}`; menu: Go > History; Browse and reopen recent locations.
- **History Back** (`HistoryBack`) — keys: `{"windows":["Ctrl\u002BShift\u002BLeft","Alt\u002BLeft"],"mac":["\u2318\u002BShift\u002BLeft","Option\u002BLeft"]}`; menu: Go > Back; Navigate back in the pane’s history.
- **History Forward** (`HistoryForward`) — keys: `{"windows":["Ctrl\u002BShift\u002BRight","Alt\u002BRight"],"mac":["\u2318\u002BShift\u002BRight","Option\u002BRight"]}`; menu: Go > Forward; Navigate forward in the pane’s history.
- **Last Folder** (`MoveToLastFolder`) — keys: `{"windows":["Shift\u002BP"],"mac":["Shift\u002BP"]}`; menu: Go > Cursor > Last Folder; Jump to the last folder in the list.
- **Location Launcher** (`ShowLocationLauncher`) — keys: `{"windows":["L"],"mac":["L"]}`; menu: Go > Location Launcher; Pick a drive or known folder to open.
- **Page Down** (`PageDownItems`) — keys: `{"windows":[".","PageDown"],"mac":[".","PageDown"]}`; menu: Go > Cursor > Page Down; Scroll the list down by one page.
- **Page Up** (`PageUpItems`) — keys: `{"windows":[",","PageUp"],"mac":[",","PageUp"]}`; menu: Go > Cursor > Page Up; Scroll the list up by one page.
- **Path Jump** (`PathJump`) — keys: `{"windows":["Shift\u002BJ"],"mac":["Shift\u002BJ"]}`; menu: Go > Path Jump; Jump to a path by typing (quick path entry).
- **Recent Files** (`ShowRecentFiles`) — keys: `{"windows":[],"mac":[]}`; menu: Go > Recent Files; 
- **Root** (`GoRoot`) — keys: `{"windows":["\\"],"mac":["\\"]}`; menu: Go > Root; Go to the root of the current drive, share, or archive.
- **Select Up** (`SelectUp`) — keys: `{"windows":["P"],"mac":["P"]}`; menu: Go > Cursor > Up; Move selection to the previous row.
- **Top** (`MoveToTop`) — keys: `{"windows":["Ctrl\u002BHome","Ctrl\u002BUp"],"mac":["Ctrl\u002BHome","\u2318\u002BUp"]}`; menu: Go > Cursor > Top; Jump selection to the first visible row.
- **Up** (`Up`) — keys: `{"windows":["U","Alt\u002BUp"],"mac":["U","Option\u002BUp"]}`; menu: Go > Parent; Go to the parent folder.

### Pane
- **Go Active To Other Path** (`GoActiveToOtherPath`) — keys: `{"windows":["O"],"mac":["O"]}`; menu: Go > Pane Paths > Go Active to Other Path; Open the active pane’s path in the other pane.
- **Go Other To Active Path** (`GoOtherToActivePath`) — keys: `{"windows":["Shift\u002BO"],"mac":["Shift\u002BO"]}`; menu: Go > Pane Paths > Go Other to Active Path; Open the other pane’s path in the active pane.
- **Sync Active To Other** (`SyncActiveToOther`) — keys: `{"windows":["Ctrl\u002BLeft"],"mac":["\u2318\u002BLeft"]}`; menu: Go > Pane Paths > Sync Active to Other; Match the other pane’s path to the active pane.
- **Sync Other To Active** (`SyncOtherToActive`) — keys: `{"windows":["Ctrl\u002BRight"],"mac":["\u2318\u002BRight"]}`; menu: Go > Pane Paths > Sync Other to Active; Match the active pane’s path to the other pane.
- **Toggle Navigation Lock** (`ToggleNavigationLock`) — keys: `{"windows":["Ctrl\u002BK"],"mac":["\u2318\u002BK"]}`; menu: ; Lock the panes so navigating one mirrors the same relative path in the other.

### Path
- **Path Edit Cancel** (`PathEditCancel`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **Path Edit Commit** (`PathEditCommit`) — keys: `{"windows":[],"mac":[]}`; menu: ; 

### Preview
- **Download Cloud Files** (`DownloadCloudFiles`) — keys: `{"windows":[],"mac":[]}`; menu: View > Download Cloud Files; 
- **Open Pinned Preview** (`OpenPinnedPreview`) — keys: `{"windows":["Ctrl\u002BShift\u002BF3"],"mac":["Ctrl\u002BShift\u002BF3"]}`; menu: View > Open Pinned Preview; 
- **Pin Window Preview** (`PinWindowPreview`) — keys: `{"windows":[],"mac":[]}`; menu: ; 
- **Preview as Hex** (`PreviewAsHex`) — keys: `{"windows":[],"mac":[]}`; menu: View > Preview as Hex; Preview the cursor file as read-only hexadecimal bytes and ASCII.
- **Toggle Pane Preview** (`TogglePanePreview`) — keys: `{"windows":["F3"],"mac":["F3"]}`; menu: View > Toggle Pane Preview; Toggle preview for the active pane.
- **Toggle Text Viewer** (`TogglePaneTextViewer`) — keys: `{"windows":["T","Ctrl\u002BF3"],"mac":["T","Ctrl\u002BF3"]}`; menu: View > Toggle Text Viewer; Force display the selected file as plain text, regardless of file type.
- **Toggle Window Preview** (`ToggleWindowPreview`) — keys: `{"windows":["Shift\u002BF3"],"mac":["Shift\u002BF3"]}`; menu: View > Toggle Window Preview; Toggle global/window preview mode.

### Run
- **Command History** (`ShowExecutionHistory`) — keys: `{"windows":["Ctrl\u002BShift\u002BH"],"mac":["Ctrl\u002BShift\u002BH"]}`; menu: Tools > Command History; 
- **Enter Item** (`EnterItem`) — keys: `{"windows":["Enter"],"mac":["Enter"]}`; menu: File > Open; Enter a folder or activate the selected item.
- **Manage Custom Commands** (`ManageCustomCommands`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Run > Manage Custom Commands; Open the custom command settings, including INI import.
- **Manage External Tools** (`ManageExternalTools`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Run > Manage External Tools; 
- **Open as Folder** (`OpenAsFolder`) — keys: `{"windows":["Ctrl\u002BShift\u002BEnter"],"mac":["Ctrl\u002BShift\u002BEnter"]}`; menu: File > Open as Folder; Open the selected folder or package contents in the active pane.
- **Register as External Tool** (`RegisterSelectedExecutableAsExternalTool`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Run > Register as External Tool; Register the selected .exe as an external tool.
- **Run** (`Run`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Run > Run; Run the selected file with default action.
- **Run As Admin** (`RunAsAdmin`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Run > Run as Admin; Run the selected file elevated (Windows).
- **Run External Tool** (`RunExternalTool`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Run > Run External Tool; 
- **Run Immediate** (`RunImmediate`) — keys: `{"windows":["Ctrl\u002BEnter"],"mac":["\u2318\u002BEnter"]}`; menu: Tools > Run > Run Immediate; Run the selected file immediately (alternate binding).
- **Run With Arguments** (`RunWithArgs`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Run > Run with Arguments; Run the selected file and prompt for arguments.

### Search
- **Clear Label Filter** (`ClearLabelFilter`) — keys: `{"windows":[],"mac":[]}`; menu: Search > Label Filter > Clear Label Filter; Clear the pane label filter.
- **Clear Persistent Filter** (`ClearPersistentFilter`) — keys: `{"windows":["Ctrl\u002B;"],"mac":["Ctrl\u002B;"]}`; menu: Search > Clear Persistent Filter; Remove the persistent filter from the pane.
- **Edit Persistent Filter** (`EditPersistentFilter`) — keys: `{"windows":[";"],"mac":[";"]}`; menu: Search > Edit Persistent Filter; Focus the always-visible persistent filter box (Enter to apply, Esc to cancel).
- **Filter by Label** (`FilterByLabel`) — keys: `{"windows":["Ctrl\u002BAlt\u002BD1","Ctrl\u002BAlt\u002BD2","Ctrl\u002BAlt\u002BD3","Ctrl\u002BAlt\u002BD4","Ctrl\u002BAlt\u002BD5","Ctrl\u002BAlt\u002BD6","Ctrl\u002BAlt\u002BD7"],"mac":["Ctrl\u002BOption\u002BD1","Ctrl\u002BOption\u002BD2","Ctrl\u002BOption\u002BD3","Ctrl\u002BOption\u002BD4","Ctrl\u002BOption\u002BD5","Ctrl\u002BOption\u002BD6","Ctrl\u002BOption\u002BD7"]}`; menu: Search > Label Filter > Important; Show only items with the requested label; repeat to clear.
- **Filter by Label: Archive** (`FilterByLabel`) — keys: `{"windows":["Ctrl\u002BAlt\u002BD1","Ctrl\u002BAlt\u002BD2","Ctrl\u002BAlt\u002BD3","Ctrl\u002BAlt\u002BD4","Ctrl\u002BAlt\u002BD5","Ctrl\u002BAlt\u002BD6","Ctrl\u002BAlt\u002BD7"],"mac":["Ctrl\u002BOption\u002BD1","Ctrl\u002BOption\u002BD2","Ctrl\u002BOption\u002BD3","Ctrl\u002BOption\u002BD4","Ctrl\u002BOption\u002BD5","Ctrl\u002BOption\u002BD6","Ctrl\u002BOption\u002BD7"]}`; menu: Search > Label Filter > Important; Show only items with the requested label; repeat to clear.
- **Filter by Label: Done** (`FilterByLabel`) — keys: `{"windows":["Ctrl\u002BAlt\u002BD1","Ctrl\u002BAlt\u002BD2","Ctrl\u002BAlt\u002BD3","Ctrl\u002BAlt\u002BD4","Ctrl\u002BAlt\u002BD5","Ctrl\u002BAlt\u002BD6","Ctrl\u002BAlt\u002BD7"],"mac":["Ctrl\u002BOption\u002BD1","Ctrl\u002BOption\u002BD2","Ctrl\u002BOption\u002BD3","Ctrl\u002BOption\u002BD4","Ctrl\u002BOption\u002BD5","Ctrl\u002BOption\u002BD6","Ctrl\u002BOption\u002BD7"]}`; menu: Search > Label Filter > Important; Show only items with the requested label; repeat to clear.
- **Filter by Label: Important** (`FilterByLabel`) — keys: `{"windows":["Ctrl\u002BAlt\u002BD1","Ctrl\u002BAlt\u002BD2","Ctrl\u002BAlt\u002BD3","Ctrl\u002BAlt\u002BD4","Ctrl\u002BAlt\u002BD5","Ctrl\u002BAlt\u002BD6","Ctrl\u002BAlt\u002BD7"],"mac":["Ctrl\u002BOption\u002BD1","Ctrl\u002BOption\u002BD2","Ctrl\u002BOption\u002BD3","Ctrl\u002BOption\u002BD4","Ctrl\u002BOption\u002BD5","Ctrl\u002BOption\u002BD6","Ctrl\u002BOption\u002BD7"]}`; menu: Search > Label Filter > Important; Show only items with the requested label; repeat to clear.
- **Filter by Label: Later** (`FilterByLabel`) — keys: `{"windows":["Ctrl\u002BAlt\u002BD1","Ctrl\u002BAlt\u002BD2","Ctrl\u002BAlt\u002BD3","Ctrl\u002BAlt\u002BD4","Ctrl\u002BAlt\u002BD5","Ctrl\u002BAlt\u002BD6","Ctrl\u002BAlt\u002BD7"],"mac":["Ctrl\u002BOption\u002BD1","Ctrl\u002BOption\u002BD2","Ctrl\u002BOption\u002BD3","Ctrl\u002BOption\u002BD4","Ctrl\u002BOption\u002BD5","Ctrl\u002BOption\u002BD6","Ctrl\u002BOption\u002BD7"]}`; menu: Search > Label Filter > Important; Show only items with the requested label; repeat to clear.
- **Filter by Label: Reference** (`FilterByLabel`) — keys: `{"windows":["Ctrl\u002BAlt\u002BD1","Ctrl\u002BAlt\u002BD2","Ctrl\u002BAlt\u002BD3","Ctrl\u002BAlt\u002BD4","Ctrl\u002BAlt\u002BD5","Ctrl\u002BAlt\u002BD6","Ctrl\u002BAlt\u002BD7"],"mac":["Ctrl\u002BOption\u002BD1","Ctrl\u002BOption\u002BD2","Ctrl\u002BOption\u002BD3","Ctrl\u002BOption\u002BD4","Ctrl\u002BOption\u002BD5","Ctrl\u002BOption\u002BD6","Ctrl\u002BOption\u002BD7"]}`; menu: Search > Label Filter > Important; Show only items with the requested label; repeat to clear.
- **Filter by Label: Review** (`FilterByLabel`) — keys: `{"windows":["Ctrl\u002BAlt\u002BD1","Ctrl\u002BAlt\u002BD2","Ctrl\u002BAlt\u002BD3","Ctrl\u002BAlt\u002BD4","Ctrl\u002BAlt\u002BD5","Ctrl\u002BAlt\u002BD6","Ctrl\u002BAlt\u002BD7"],"mac":["Ctrl\u002BOption\u002BD1","Ctrl\u002BOption\u002BD2","Ctrl\u002BOption\u002BD3","Ctrl\u002BOption\u002BD4","Ctrl\u002BOption\u002BD5","Ctrl\u002BOption\u002BD6","Ctrl\u002BOption\u002BD7"]}`; menu: Search > Label Filter > Important; Show only items with the requested label; repeat to clear.
- **Filter by Label: Waiting** (`FilterByLabel`) — keys: `{"windows":["Ctrl\u002BAlt\u002BD1","Ctrl\u002BAlt\u002BD2","Ctrl\u002BAlt\u002BD3","Ctrl\u002BAlt\u002BD4","Ctrl\u002BAlt\u002BD5","Ctrl\u002BAlt\u002BD6","Ctrl\u002BAlt\u002BD7"],"mac":["Ctrl\u002BOption\u002BD1","Ctrl\u002BOption\u002BD2","Ctrl\u002BOption\u002BD3","Ctrl\u002BOption\u002BD4","Ctrl\u002BOption\u002BD5","Ctrl\u002BOption\u002BD6","Ctrl\u002BOption\u002BD7"]}`; menu: Search > Label Filter > Important; Show only items with the requested label; repeat to clear.
- **New Smart Folder...** (`CreateSmartFolder`) — keys: `{"windows":[],"mac":[]}`; menu: Edit > New Smart Folder...; Create a smart folder from stacked file conditions in the active folder.
- **Open Grep Window** (`OpenGrepWindow`) — keys: `{"windows":[],"mac":[]}`; menu: Search > Grep; Open the Grep search window.
- **Recursive Search** (`ShowRecursiveSearch`) — keys: `{"windows":["Ctrl\u002BF"],"mac":["\u2318\u002BF"]}`; menu: Search > Recursive Search; Search recursively under the current folder.
- **Refresh Smart Folder** (`RefreshSmartFolder`) — keys: `{"windows":[],"mac":[]}`; menu: Edit > Refresh Smart Folder; Re-run the active smart folder's saved query. Also runs automatically when Refresh Active is used on a smart folder tab.
- **Save Search as Smart Folder...** (`SaveSmartFolder`) — keys: `{"windows":["Ctrl\u002BShift\u002BS"],"mac":["\u2318\u002BShift\u002BS"]}`; menu: Edit > Save Search as Smart Folder...; Save the active search definition as a dynamically refreshed smart folder.
- **Set Persistent Filter: Files + Folders** (`SetPersistentFilterFilesAndDirectories`) — keys: `{"windows":[],"mac":[]}`; menu: Search > Persistent Filter: Files + Folders; Apply persistent filter to both files and folders.
- **Set Persistent Filter: Files Only** (`SetPersistentFilterFilesOnly`) — keys: `{"windows":[],"mac":[]}`; menu: Search > Persistent Filter: Files Only; Keep folders visible while filtering files.
- **Show SFIS Manager** (`ShowSfisManager`) — keys: `{"windows":[],"mac":[]}`; menu: ; Open SFIS service, mount, volume, settings, and log status.
- **Toggle Persistent Filter Scope** (`TogglePersistentFilterScope`) — keys: `{"windows":[],"mac":[]}`; menu: Search > Toggle Persistent Filter Scope; Switch persistent filter between files-only and files-plus-folders scope.

### Selection
- **Invert Marks** (`InvertMarks`) — keys: `{"windows":["Alt\u002BA"],"mac":["Option\u002BA"]}`; menu: Edit > Selection > Invert Marks; Invert marks on filtered items in the active pane.
- **Mark All** (`MarkAll`) — keys: `{"windows":["Ctrl\u002BA"],"mac":["Ctrl\u002BA"]}`; menu: Edit > Selection > Mark All; Mark all filtered items in the active pane.
- **Mark All Files** (`MarkAllFilesToggle`) — keys: `{"windows":["A"],"mac":["A"]}`; menu: Edit > Selection > Mark All Files; Toggle marks on all filtered files.
- **Mark All Items** (`MarkAllIncludingDirectoriesToggle`) — keys: `{"windows":["Shift\u002BA"],"mac":["Shift\u002BA"]}`; menu: Edit > Selection > Mark All Items; Toggle marks on all filtered files and folders.
- **Select** (`ShowFuzzySelect`) — keys: `{"windows":["F"],"mac":["F"]}`; menu: Search > Select; Pick a file under the current folder.
- **Toggle Mark** (`ToggleMark`) — keys: `{"windows":["Space","Ctrl\u002BSpace","Insert"],"mac":["Space","Ctrl\u002BSpace","Insert"]}`; menu: Edit > Selection > Toggle Mark; Mark or unmark the current row for batch operations.
- **Unmark All** (`UnmarkAll`) — keys: `{"windows":["Ctrl\u002BShift\u002BA"],"mac":["Ctrl\u002BShift\u002BA"]}`; menu: Edit > Selection > Unmark All; Unmark all filtered items in the active pane.

### Shelf
- **Add to Shelf** (`AddToShelf`) — keys: `{"windows":["V"],"mac":["V"]}`; menu: Tools > Shelf > Add Selection to Shelf; 
- **Shelf: Clear** (`ClearShelf`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Shelf > Clear Shelf; 
- **Shelf: Copy to Active Pane** (`ShelfCopyToActivePane`) — keys: `{"windows":["Shift\u002BV"],"mac":["Shift\u002BV"]}`; menu: Tools > Shelf > Copy Shelf to Active Pane; 
- **Shelf: Copy to Other Pane** (`ShelfCopyToOtherPane`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Shelf > Copy Shelf to Other Pane; 
- **Shelf: Move to Active Pane** (`ShelfMoveToActivePane`) — keys: `{"windows":["Ctrl\u002BV"],"mac":["Ctrl\u002BV"]}`; menu: Tools > Shelf > Move Shelf to Active Pane; 
- **Shelf: Move to Other Pane** (`ShelfMoveToOtherPane`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Shelf > Move Shelf to Other Pane; 
- **Shelf: Remove Selection** (`RemoveFromShelf`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Shelf > Remove Selection from Shelf; 
- **Shelf: View Contents** (`ToggleShelf`) — keys: `{"windows":["Ctrl\u002BShift\u002BV"],"mac":["Ctrl\u002BShift\u002BV"]}`; menu: Tools > Shelf > Show Shelf; 

### Tabs
- **Add Search Results to Virtual List** (`AddSearchResultsToVirtualList`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Virtual List > Add Search Results to Virtual List; Send search hits into a virtual list.
- **Add to Virtual List** (`AddToVirtualList`) — keys: `{"windows":["Ctrl\u002BShift\u002BM"],"mac":["\u2318\u002BShift\u002BM"]}`; menu: Tools > Virtual List > Add to Virtual List; Append selection to the current virtual list.
- **Clear Virtual List** (`ClearVirtualList`) — keys: `{"windows":["Ctrl\u002BShift\u002BDelete"],"mac":["Ctrl\u002BShift\u002BDelete"]}`; menu: Tools > Virtual List > Clear Virtual List; Remove all entries from the virtual list.
- **Close Tab** (`CloseTab`) — keys: `{"windows":["Ctrl\u002BW"],"mac":["\u2318\u002BW"]}`; menu: File > Close Tab; Close the current tab.
- **New Tab** (`NewTab`) — keys: `{"windows":["Ctrl\u002BT"],"mac":["\u2318\u002BT"]}`; menu: File > New Tab; Open a new tab in the pane.
- **New Virtual Folder** (`CreateVirtualList`) — keys: `{"windows":["Ctrl\u002BShift\u002BN"],"mac":["\u2318\u002BShift\u002BN"]}`; menu: Tools > Virtual List > New Virtual Folder; Create a named user virtual folder.
- **Next Tab** (`NextTab`) — keys: `{"windows":["Ctrl\u002BTab"],"mac":["Ctrl\u002BTab"]}`; menu: File > Next Tab; Switch to the next tab.
- **Previous Tab** (`PreviousTab`) — keys: `{"windows":["Ctrl\u002BShift\u002BTab"],"mac":["Ctrl\u002BShift\u002BTab"]}`; menu: File > Previous Tab; Switch to the previous tab.
- **Remove from Virtual List** (`RemoveFromVirtualList`) — keys: `{"windows":["Ctrl\u002BDelete"],"mac":["Ctrl\u002BDelete"]}`; menu: Edit > Remove from Virtual List; Remove the selected entry from the virtual list.
- **Rename Virtual List** (`RenameVirtualList`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Virtual List > Rename Virtual List; Rename the current virtual list tab.

### Terminal
- **Command Bar: Toggle** (`ToggleCommandBar`) — keys: `{"windows":["Ctrl\u002BShift\u002BT"],"mac":["\u2318\u002BShift\u002BT"]}`; menu: View > Show Command Bar; Show or hide the one-line command bar under the panes. Commands run in the active pane's folder and both panes refresh when they finish.
- **Open Terminal** (`OpenTerminal`) — keys: `{"windows":["Ctrl\u002B\u0060"],"mac":["\u2318\u002B\u0060"]}`; menu: Tools > Terminal > Open Terminal; Open a terminal in the active folder.
- **Open Terminal (Other Pane)** (`OpenTerminalOtherPane`) — keys: `{"windows":["Ctrl\u002BShift\u002B\u0060"],"mac":["\u2318\u002BShift\u002B\u0060"]}`; menu: Tools > Terminal > Open Terminal Other Pane; Open a terminal in the other pane’s folder.
- **Open Terminal As Admin** (`OpenTerminalAsAdmin`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Terminal > Open Terminal as Admin; Open an elevated terminal in the active folder (Windows).
- **Open Terminal Here** (`OpenTerminalHere`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Terminal > Open Terminal Here; Open a terminal in the selected folder, or the containing folder for a selected file.
- **Open Terminal Here As Admin** (`OpenTerminalHereAsAdmin`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Terminal > Open Terminal Here as Admin; Open an elevated terminal in the selected folder, or the containing folder for a selected file (Windows).

### Tools
- **Memos** (`ShowMemos`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Memos; Open text and path-linked memos.

### User
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

### View
- **Apply Pending Changes** (`ApplyPendingChanges`) — keys: `{"windows":[],"mac":[]}`; menu: View > Apply Pending Changes; Apply pending incremental folder changes.
- **Cycle View (Details/Grid/Rich)** (`TogglePaneGrid`) — keys: `{"windows":["Ctrl\u002BShift\u002BG"],"mac":["Ctrl\u002BShift\u002BG"]}`; menu: View > Toggle Thumbnail Grid; Cycle the active pane view: details list -> thumbnail grid -> rich list.
- **Display Ignore Rules** (`ManageDisplayIgnoreRules`) — keys: `{"windows":[],"mac":[]}`; menu: View > Display Ignore Rules...; 
- **Focus Other Pane** (`FocusOtherPane`) — keys: `{"windows":["Tab"],"mac":["Tab"]}`; menu: View > Focus Other Pane; Switch keyboard focus between left and right panes.
- **Ignore Selected Extension** (`IgnoreSelectedExtension`) — keys: `{"windows":[],"mac":[]}`; menu: View > Ignore Selected Extension; 
- **Ignore Selected Name** (`IgnoreSelectedName`) — keys: `{"windows":[],"mac":[]}`; menu: View > Ignore Selected Name; 
- **Refresh** (`Refresh`) — keys: `{"windows":[],"mac":[]}`; menu: ; Refresh the current view.
- **Refresh Active** (`RefreshActive`) — keys: `{"windows":["Ctrl\u002BR"],"mac":["\u2318\u002BR"]}`; menu: View > Refresh; Reload the listing for the current folder.
- **Show Ignored Items** (`ToggleShowIgnoredItems`) — keys: `{"windows":[],"mac":[]}`; menu: View > Show Ignored Items; 
- **Sort** (`SortCycle`) — keys: `{"windows":["S"],"mac":["S"]}`; menu: View > Sort > Sort; Cycle the active file list sort key.
- **Sort Reverse** (`SortToggleDescending`) — keys: `{"windows":["Shift\u002BS"],"mac":["Shift\u002BS"]}`; menu: View > Sort > Sort Reverse; Reverse the active file list sort direction.
- **Sort by Extension** (`SortByExtension`) — keys: `{"windows":[],"mac":[]}`; menu: View > Sort > By Extension; Sort the active file list by extension.
- **Sort by Label** (`SortByLabel`) — keys: `{"windows":[],"mac":[]}`; menu: View > Sort > By Label; Sort the active file list by color label.
- **Sort by Modified Time** (`SortByModifiedTime`) — keys: `{"windows":[],"mac":[]}`; menu: View > Sort > By Modified Time; Sort the active file list by modified time.
- **Sort by Name** (`SortByName`) — keys: `{"windows":[],"mac":[]}`; menu: View > Sort > By Name; Sort the active file list by name.
- **Sort by Original Order** (`SortOriginalOrder`) — keys: `{"windows":[],"mac":[]}`; menu: View > Sort > Original Order; Sort the active file list by the original provider order.
- **Sort by Size** (`SortBySize`) — keys: `{"windows":[],"mac":[]}`; menu: View > Sort > By Size; Sort the active file list by size.
- **Toggle Flat View** (`ToggleFlatView`) — keys: `{"windows":["Shift\u002BF"],"mac":["Shift\u002BF"]}`; menu: ; Toggle a flattened, recursive view of the active folder.
- **Toggle Inline FZF** (`ToggleInlineFzf`) — keys: `{"windows":["?","/"],"mac":["?","/"]}`; menu: View > Toggle Inline FZF; Toggle inline filter over the file list.
- **Toggle Path Edit** (`TogglePathEdit`) — keys: `{"windows":["Ctrl\u002BL"],"mac":["\u2318\u002BL"]}`; menu: View > Toggle Path Edit; Toggle editing the path in the address bar.

### VirtualList
- **Add Selection to Virtual Folder** (`AddSelectionToVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Virtual List > Add Selection to Virtual Folder; Add the current selection to the virtual folder.
- **Add to Existing Virtual List** (`AddToExistingVirtualList`) — keys: `{"windows":["Shift\u002BAlt\u002BL"],"mac":["\u2318\u002BShift\u002BL"]}`; menu: Tools > Virtual List > Add to Existing Virtual List; Add items to another existing virtual list.
- **Clear Virtual Folder** (`ClearVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Virtual List > Clear Virtual Folder; Clear the current virtual folder.
- **Delete Virtual Folder** (`DeleteVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Virtual List > Delete Virtual Folder; Delete the current saved virtual folder.
- **Duplicate Virtual Folder** (`DuplicateVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Virtual List > Duplicate Virtual Folder; Duplicate the current virtual folder.
- **New Virtual Folder** (`NewVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: ; Create a new user virtual folder.
- **Open Containing Folder Here** (`OpenContainingFolderInThisPane`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Virtual List > Open Containing Folder Here; Open the selected virtual item containing folder in this pane.
- **Open Containing Folder in Other Pane** (`OpenContainingFolderInOtherPane`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Virtual List > Open Containing Folder in Other Pane; Open the selected virtual item containing folder in the other pane.
- **Open Grep Results as Virtual Folder** (`OpenGrepResultsAsVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Virtual List > Open Grep Results as Virtual Folder; Open grep results as a virtual folder.
- **Open SFIS Results as Virtual Folder** (`OpenSfisResultsAsVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Virtual List > Open SFIS Results as Virtual Folder; Open SFIS results as a virtual folder.
- **Open Search Results as Virtual Folder** (`OpenSearchResultsAsVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Virtual List > Open Search Results as Virtual Folder; Open search results as a virtual folder.
- **Open Virtual Folder** (`OpenVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Virtual List > Open Virtual Folder; Pick a saved virtual folder and open it in a tab.
- **Open Virtual Folder Manager** (`OpenVirtualFolderManager`) — keys: `{"windows":["Ctrl\u002BShift\u002BJ"],"mac":["\u2318\u002BShift\u002BJ"]}`; menu: Go > Virtual Folders; List saved virtual folders: open, rename, duplicate, or delete one.
- **Remove from Virtual Folder** (`RemoveFromVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Virtual List > Remove from Virtual Folder; Remove selection from the virtual folder.
- **Rename Virtual Folder** (`RenameVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Virtual List > Rename Virtual Folder; Rename the current virtual folder.
- **Save All Virtual Folders** (`SaveAllVirtualFolders`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Virtual List > Save All Virtual Folders; 
- **Save Virtual Folder** (`SaveVirtualFolder`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Virtual List > Save Virtual Folder; Save a transient virtual folder as a user virtual folder.
- **Toggle Follow in Opposite Pane** (`ToggleVirtualListFollow`) — keys: `{"windows":[],"mac":[]}`; menu: Tools > Virtual List > Toggle Follow in Opposite Pane; Toggle whether the opposite pane follows the virtual list selection.

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

If you cancel a scan, the results found up to that point stay on screen. A warning banner above the results says the scan was stopped early, so sizes and totals are smaller than the real ones.

Use **Up one level** below the root paths to select the parent folder, or **Volume root** to select the containing drive or mounted volume. **Choose folders…** opens the folder picker and supports multiple folders. **Edit paths** switches to custom paths, with one folder per line. Up one level and Volume root are available for a single root. Changing the target does not start a scan; click **New scan** when ready.

### External Tools and Commands

Register an external tool in Settings > Integrations or create a custom command under Settings > Commands. Custom commands can receive the current item, marked items, active path, and other values through placeholders such as ${active.item.full}. Assign commands to a key or context menu when needed. Review the preview and working directory before running unfamiliar commands.

### File Operations

Select or mark files, then use Copy, Move, Rename, or Delete. Copy and move can target the other pane or a chosen folder. Conflicts are shown before replacement, and completed operations appear in the Jobs panel. Use Undo where available to reverse supported operations.

### File Search

Search finds files and folders by name. Choose a starting folder, enter a query, and narrow results with filters such as extension. Open a result or show the result set as a virtual folder. Search settings are available under Settings > Search and Storage > Snapshot Search.

## Refine or clear results

In the results pane, open the size filter and enter a minimum and/or maximum such as `10 MB` and `20 MB`. Press Enter to apply it together with the text filter (for example, `ext:pdf`). Either bound can be left empty. Size conditions exclude directories; clearing the filter restores the full result set. The applied conditions are saved with the results tab.

**Clear Results** is available in the search dialog and the results pane after the search finishes. It empties the displayed results and marks without deleting the original files. You can then run a new search.

### Folder Synchronization

Folder synchronization compares two folders and helps copy files that are missing or different. Choose the left and right folders, review the comparison, then select the direction and items to synchronize. Inspect conflicts before applying changes.

### Getting Started

InsightFlow is a dual-pane file manager. Each pane can browse folders independently; select a file to preview it, and use the other pane as a convenient copy or move destination. Use the menu or command palette to find commands. Press Ctrl+P on Windows/Linux or Command+P on macOS to open the palette.

## Install and discover

Download the package for your platform from the downloads page. On Windows, extract the portable ZIP into a new empty folder and run `InsightFlow.exe`. On macOS, open the DMG and drag the app into Applications.

Open **Help > Feature Guide** for an offline introduction with sample screenshots and practical uses. **Help > Open AI Help Files** opens the bundled Markdown documentation so you can share it with an AI assistant.

## Updates

Use **Help > Check for Updates** to check and apply updates. When automatic checking is enabled, InsightFlow checks at startup and again approximately every four hours (up to five minutes of jitter). A notification does not automatically install the update. Beta builds enable automatic checking by default; saved settings take precedence.

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

The copy confirmation dialog lets you choose **SCOPY — Speed**, **SCOPY — Safe**, or **Standard** for each copy. This selection applies only to the current job and its retries; the app's default engine stays the same. SCOPY choices are disabled when its runtime is unavailable. Existing Native and Legacy copy settings migrate to Standard.

Settings offers **Standard / SCOPY** for both copy and delete. Recycle bin operations use Standard; if the SCOPY runtime is unavailable, operations fall back to Standard.

### Search File Contents

Grep searches text inside files, while file search matches names. Open Search > Grep or find Open Grep Window in the command palette. Choose a folder and query; regular expressions and extension filters are supported. Results are grouped by file, and selecting a matching line opens its file. Search behavior is configured in Settings > Integrations > Grep & History.

Reopening Grep restores the latest results. To start another search, click **New Search** at the top right of the results window. This opens the search form for the same folder and keeps the previous results, even while a search is running.

### Selection and Marks

The focused row is the current selection. Marks let you operate on several items together; toggle a mark on an item or mark all matching entries. Copy, move, rename, or delete acts on marked items when marks exist. Clear marks when you want commands to use only the current selection.

### Settings

Open Tools > Settings or search for Settings in the command palette. Settings are grouped by category and tab. Use the categories to configure appearance, input, integrations, commands, storage, jobs, updates, and diagnostics. The help index can search individual controls and open the matching tab.

### Shelf

The Shelf temporarily collects paths so you can work with them together. Add selected or marked items, open the Shelf to review its contents, and then use those paths as a source for supported operations. The Shelf is useful when source items come from different folders.

### Terminal

Open a terminal in the active folder using the configured terminal application. Configure the executable, arguments, and working-directory behavior in Settings > Integrations > Terminal. Use external tools or custom commands for repeatable terminal tasks.

## Command Bar

Press **Primary+Shift+T** (View → Show Command Bar) to open a one-line command bar under the panes. A command runs in the active pane's folder, its output appears above the input, and both panes refresh when it finishes, so new files show up without switching windows.

| Key (in the command bar) | Action |
| --- | --- |
| Enter | Run in the active pane's folder |
| Shift+Enter | Run in the external terminal (for interactive programs) |
| Ctrl+Enter | Insert the marked items' names (or the cursor item), quoted |
| Ctrl+Shift+Enter | Insert them as full paths |
| Ctrl+O | Insert the other pane's folder |
| Up / Down | Command history |
| Esc | Stop the running command, or close the bar |
| Ctrl+U | Clear the input |

You can also drop files onto the bar or pick a value from the **+** menu. What you type is passed to the shell as is (Windows: `cmd.exe`, macOS/Linux: your login shell); there are no placeholders to expand. Commands do not get keyboard input, so run interactive programs with Shift+Enter. Commands cannot run in archive, remote, or search-result tabs.

### Views and Preview

## Binary (Hex) preview

Use **View → Preview as Hex**, the file context menu, or the command palette to inspect the cursor file as read-only bytes. The preview header also offers **Auto / Text / Binary (Hex)**. This works in the preview pane, separate window, and pinned windows. There is no default global shortcut; assign one in key settings if needed.

The viewer links the Offset, hexadecimal and ASCII columns. Non-printable ASCII bytes appear as `.`, while missing bytes at EOF remain blank. Choose automatic, 8, 16 or 32 bytes per row. Large files are read in bounded pages rather than loaded entirely.

| Action | Operation |
| --- | --- |
| Click, drag, Shift+click | Select a byte or continuous range |
| Arrow keys / PageUp, PageDown | Move by byte, row or viewport; hold Shift to extend selection |
| Home, End / Ctrl+Home, End | Go to row start/end or file start/end |
| Ctrl+G | Jump to an absolute hexadecimal (default) or decimal offset; `0x` always means hex |
| Ctrl+F | Find exact Hex, UTF-8, ASCII, UTF-16 LE or UTF-16 BE bytes |
| Enter / Shift+Enter in search | Find next / previous. Search does not wrap automatically; use Search from start/end |
| Ctrl+C / Copy menu | Copy Hex, ASCII, an offset-labelled dump or the start offset; maximum 1 MiB of raw bytes |
| Ctrl+A | Select the entire file logically without loading it |
| Values | Inspect signed/unsigned integers, floats and bits at the cursor; switch LE/BE. `—` means insufficient bytes |
| Esc | Cancel search, then close search/jump controls, then use the existing preview exit action. IME composition takes priority |

On macOS use Cmd instead of Ctrl. Viewer shortcuts apply only while its content has focus. F3 remains the existing preview toggle. Row width, inspector visibility and endianness are saved. The format choice returns to Auto when the preview is closed.

Auto preserves existing image/PDF/document previews and falls back to Hex for unsupported or binary-detected files. Regular files and OS-mounted shares are supported; directories, SFTP virtual items and archive entries are not. You may inspect an archive file's raw bytes. Cloud-only files follow existing download settings.

Detected external changes invalidate the session; choose Reload to continue. This is not a file snapshot: overwrites preserving both length and modification time cannot be reliably detected. Editing, saving and replacement are not supported.

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
