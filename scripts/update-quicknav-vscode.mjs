import { execFileSync } from 'node:child_process';
import { mkdirSync, readFileSync, writeFileSync } from 'node:fs';

const repository = 'yahright/downloads';
const version = process.argv[2];
if (!version || !/^\d+\.\d+\.\d+$/.test(version)) {
  throw new Error('Usage: node scripts/update-quicknav-vscode.mjs <version>');
}

const product = 'quicknav-vscode';
const tag = `${product}-v${version}`;
const filename = `${product}-${version}.vsix`;
const release = JSON.parse(execFileSync('gh', [
  'api', `repos/${repository}/releases/tags/${tag}`,
], { encoding: 'utf8' }));
const asset = release.assets.find(candidate => candidate.name === filename);
if (release.draft || release.prerelease || !asset || asset.state !== 'uploaded' ||
    !/^sha256:[a-f0-9]{64}$/.test(asset.digest) || !(asset.size > 0)) {
  throw new Error(`Expected a published stable release with a VSIX and SHA-256 digest: ${tag}`);
}

const catalogPath = new URL('../appcat/catalog.json', import.meta.url);
const catalog = JSON.parse(readFileSync(catalogPath, 'utf8'));
const entry = catalog.packages.find(pkg => pkg.id === product);
if (!entry?.download_only || !entry.artifacts.length || entry.artifacts.some(artifact => artifact.kind !== 'vsix')) {
  throw new Error('Missing QuickNav VS Code download-only catalog entry');
}
if (version.localeCompare(entry.latest, 'en', { numeric: true }) < 0) {
  throw new Error(`Catalog already lists a newer version: ${entry.latest}`);
}

const downloadUrl = asset.browser_download_url;
const sha256 = asset.digest.slice('sha256:'.length);
const size = asset.size;
entry.latest = version;
for (const artifact of entry.artifacts) {
  Object.assign(artifact, { url: downloadUrl, sha256, size, entry: filename });
}

const pageDir = new URL('../docs/files/quicknav-vscode/', import.meta.url);
const manifest = {
  version,
  channel: 'Stable',
  notesUrl: release.html_url,
  downloads: [{ platform: 'universal', kind: 'vsix', url: downloadUrl, sha256, size }],
};
const page = `---
layout: default
title: QuickNav for VS Code
---

# QuickNav for VS Code

ファイル検索、シンボル移動、行ブックマークを使える VS Code 拡張です。

- [最新版 ${version} の VSIX をダウンロード](${downloadUrl})
- [リリースノートと SHA-256](${release.html_url})
- [配布情報 JSON](latest.json)

VS Code の拡張機能ビューから「VSIX からのインストール」を選び、ダウンロードしたファイルを開きます。
`;

mkdirSync(pageDir, { recursive: true });
writeFileSync(new URL('latest.json', pageDir), JSON.stringify(manifest, null, 2) + '\n');
writeFileSync(new URL('index.md', pageDir), page);
writeFileSync(catalogPath, JSON.stringify(catalog, null, 2) + '\n');
console.log(`Updated QuickNav VS Code downloads and AppCat for ${version}`);
