# Vyavahara (ವ್ಯವಹಾರ)

ನಿಮ್ಮ ಪೂರ್ತಿ ವ್ಯವಹಾರ, ಒಂದೇ ಕಡೆ (all your business in one place)

An offline-first Android and web app with a Kannada, Hindi and English voice assistant, for village merchants. It manages customer credit (khata), supplier dues, stock, billing and daily summaries.

The single source of truth is [docs/srs.md](docs/srs.md). Business expectations are in the client requirements under `docs/source/`.

## Stack

Flutter and Dart, flutter_riverpod, go_router, Drift (SQLite) on the device, Supabase (Postgres, Auth, Storage, Edge Functions) in the cloud. The full list and the rules for changing it are in section 3 of the SRS.

## Layout

| Folder | Contents |
|---|---|
| `app/` | Flutter app (Android and web) |
| `supabase/` | Migrations and Edge Functions |
| `docs/` | SRS, source documents, ADRs |
| `.github/` | CI workflow and templates |

## Prerequisites

- Flutter 3.50.1 (stable) with the Android SDK and command-line tools
- Supabase CLI
- Docker Desktop, only from milestone M1 (local Supabase and SQL tests)
- On Windows, use Git Bash

## Run the app

```bash
cd app
flutter pub get          # also generates localizations (lib/l10n)
dart run build_runner build
flutter run -d chrome
```

Secrets are not needed yet. When they are, copy `.env.example` to `.env`. Never commit `.env`.

## Checks (the same ones CI runs)

```bash
cd app
dart format --output=none --set-exit-if-changed lib/main.dart lib/router.dart lib/core lib/features lib/voice test tool
flutter analyze
dart run tool/check_arb_parity.dart
flutter test
```

## Working on this repo

See [CONTRIBUTING.md](CONTRIBUTING.md). Work follows the milestones M0 to M7 in section 11 of the SRS.