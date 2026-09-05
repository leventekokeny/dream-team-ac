# Dream Team AC – 2026/27 ősz

Mobilra optimalizált pingpong csapatapp, Supabase közös adatbázissal.

## GitHub Pages

1. A repóban menj a **Settings → Pages** menübe.
2. Source: **Deploy from a branch**
3. Branch: **main**
4. Folder: **/(root)**
5. Save.

Ezután az oldal a GitHub Pages címen lesz elérhető.

## Supabase

A Supabase SQL Editorban egyszer futtasd le:

`dream-team-ac-supabase-setup-v3.sql`

A kliensoldali app a Supabase publishable/anon hozzáférést használja. Service role vagy adatbázis-jelszó nem szükséges a frontendben.

## Fájlok

- `index.html` – az app
- `manifest.webmanifest` – telepíthető webapp metaadatok
- `icon-192.png`, `icon-512.png` – ikonok
- `dream-team-ac-supabase-setup-v3.sql` – adatbázis setup
