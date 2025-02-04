'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "23d555c21e8ade2e715241cae0668e79",
"version.json": "d28cdfb73ccd7830a2f61de9f1a5b67c",
"index.html": "1afb286744aac7205eb10990d6c75ebb",
"/": "1afb286744aac7205eb10990d6c75ebb",
"main.dart.js": "80ed5c2d8ca38f859a5dcdb978356524",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"k.ico": "35e11eb536ff2c05ddacc65baa6abf4f",
"icons/maskable_icon.png": "ab912dc8c54bf6cda3724400b50465c6",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "2f546e1e800d59cb6fe51aef19eae659",
"assets/AssetManifest.json": "5d23b4d11d27cf66bd3f5472b6ebc108",
"assets/NOTICES": "ad122a2aaa53dc52b5be59142af59943",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "6f887251e5a02bd8a3718a8f44489788",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "843091211265ab2d17b3ea1bac14ce3a",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/assets/svg/dartlang-icon.svg": "384ad99903293e87f01f49214db88050",
"assets/assets/svg/github-mark-white.svg": "a0b00583d93c2f7084ad151ee0849934",
"assets/assets/svg/hexagon.svg": "ef4ea5330839d18bf3e4ccc5b89b0e8a",
"assets/assets/svg/skewed.svg": "399f08a7b5fb3109771e914b4f5e7693",
"assets/assets/svg/icons8-linkedin.svg": "c20e472dbbe47e5809cf79a0b4e283e4",
"assets/assets/svg/dotnet-logo.svg": "37258a983459ae1c2e4f1e551665f388",
"assets/assets/svg/icons8-instagram.svg": "b6c744edbbd685bced0fe1f69d0a0e89",
"assets/assets/svg/laravel-2.svg": "2fa5a6b6d7ce810d2b67ebf6df87fcc8",
"assets/assets/svg/flutterio-icon.svg": "59a662c262bb9fae1751abe4d13abb84",
"assets/assets/svg/java-icon.svg": "249fe040428adedb1d5b3bb6811ef492",
"assets/assets/svg/dotnet-icon.svg": "d969f7b3867a266393b5c5a3c2048db5",
"assets/assets/svg/codeigniter.svg": "510c5b6ee440ec6c9010d20d00772333",
"assets/assets/svg/firebase-icon.svg": "10b0719343408095f5a9b369e0787115",
"assets/assets/svg/github-icon-1.svg": "ce89173e3842fb91835a9cc8605a5ecc",
"assets/assets/svg/python-5.svg": "146716bdf1a351db5705ec1e6a25ed08",
"assets/assets/svg/office-2.svg": "99b0baeb8c5c6d249b986ffd8766275b",
"assets/assets/png/fcd-mockup.png": "8d8083a7016ca9ddacb18bc8f505c84d",
"assets/assets/png/toko-saya-mockup.png": "77c6b5a76ace8335b8a44b7d323d4fd9",
"assets/assets/png/mpr-ri-4-pilar-1.png": "1bd55b790691462a4f946b8c4ba710bc",
"assets/assets/png/deprofile-mockup.png": "eb46abbd8c625c6f5b5191c00b4c2d17",
"assets/assets/png/devfest-1.png": "b159777ab0835f50719ad1a5675cd485",
"assets/assets/png/e-pelita-guru-mockup.png": "39a010f4aee72f7658f19311c91d76f6",
"assets/assets/png/epel-guru.png": "82fae042737bb6edf30935e8c1651831",
"assets/assets/png/ikis.png": "291139aa1b1626f7c97bd2d99e469c4b",
"assets/assets/png/makerindo.png": "ae12b6330fa014eaa1fd065e14f73d87",
"assets/assets/png/data-scientist-1.png": "21dcdc0a987b68d761cf77763db97593",
"assets/assets/png/tb-cr-2.png": "20c68ecde13a47f756be3f2489ed3da7",
"assets/assets/png/epel-siswa.png": "9f11cc8ad2d2c2c381041a268bb5bc2c",
"assets/assets/png/lks-prov.png": "dffcb09d53ecbfda49635b0751227a56",
"assets/assets/png/celerry-mockup.png": "924dbb57a1623e0328bae788d8d97676",
"assets/assets/png/e-pelita-siswa-mockup.png": "72008787601ae290b289a78bf54cb30d",
"assets/assets/png/gadai-express-mockup.png": "77dd7971552a74e59230e94d660c5b39",
"assets/assets/png/lks-kab.png": "67dbde39142372080c0022e075410f12",
"assets/assets/png/scf-ai.png": "6eb1d1cc74f0e52de25c975c7fd8bb13",
"assets/assets/png/stone-classifier.png": "7608eb9cc5d47fc53ba533da7c5d2a31",
"assets/assets/png/matchapp-mockup.png": "46f55204675ca8f4cf30e548858aced3",
"assets/assets/png/makerindo-mockup.png": "590a7736cb3a2e906859ef2ccfb77edf",
"assets/assets/png/devin-mockup.png": "bb5c549b2b7ca1ab6aa4a4d9aaf27086",
"assets/assets/png/deqr-mockup.png": "81fcbd7c82a61c695b6ac98d14b69b08",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
