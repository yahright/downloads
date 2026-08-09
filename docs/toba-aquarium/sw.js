/* 鳥羽水族館 生きものリスト Service Worker
   - アプリシェル（HTML/アイコン/manifest）を precache → オフライン起動
   - データは index.html に埋め込み済みなので、シェルのキャッシュで完結する。
   バージョンを上げると古いシェルキャッシュは activate 時に破棄される。 */
const VERSION = "v8";
const SHELL = "toba-shell-" + VERSION;

const SHELL_ASSETS = [
  "./",
  "./index.html",
  "./manifest.json",
  "./icons/icon-192.png",
  "./icons/icon-512.png",
  "./icons/icon-maskable-512.png",
  "./icons/apple-touch-icon.png",
];

self.addEventListener("install", (e) => {
  e.waitUntil(
    caches.open(SHELL)
      .then((c) => c.addAll(SHELL_ASSETS))
      .then(() => self.skipWaiting())
  );
});

self.addEventListener("activate", (e) => {
  e.waitUntil(
    caches.keys()
      .then((keys) => Promise.all(
        keys.filter((k) => k.startsWith("toba-shell-") && k !== SHELL)
            .map((k) => caches.delete(k))
      ))
      .then(() => self.clients.claim())
  );
});

self.addEventListener("fetch", (e) => {
  const req = e.request;
  if (req.method !== "GET") return;
  const url = new URL(req.url);

  // 画面遷移 → アプリシェル（index.html）を返す＝オフラインでも起動
  if (req.mode === "navigate") {
    e.respondWith(caches.match("./index.html").then((r) => r || fetch(req)));
    return;
  }
  // 同一オリジンの資産 → cache-first, network fallback
  if (url.origin === self.location.origin) {
    e.respondWith(caches.match(req).then((r) => r || fetch(req)));
  }
});
