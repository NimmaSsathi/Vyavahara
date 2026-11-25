# Contributing

The SRS (`docs/srs.md`) is the single source of truth. If it is unclear or missing something, ask and record the answer there. Do not guess.

## Branches and commits

- One branch per milestone step: `feat/m<N>-<name>`, for example `feat/m1-data-layer`.
- Conventional Commits, for example `feat(khata): add credit entry form (FR-KH-01)`.
- Never push to `main`. Open a pull request, wait for CI, then merge.
- Every PR lists the requirement IDs it implements (FR, VA, NFR, SEC, API, SCR, UI).

## Rules that CI and review enforce

- Money is integer paise. Never use floating point for money or quantities.
- Every user-facing string lives in the ARB files (kn, hi, en). No hard-coded text.
- Never log names, phone numbers or amounts (SEC-07).
- Never commit secrets. `.env` stays local. The service-role key never goes in the app.
- Only the sync engine talks to the cloud. UI, controllers and repositories use the local database.
- Voice commands that write money always show a confirmation first.
- No new dependency without an approved ADR in `docs/adr/`.

## Before you push

Run the checks listed in the README, and regenerate code if you changed a provider:

```bash
dart run build_runner build
```

Generated `*.g.dart` files are committed. Generated localizations in `app/lib/l10n/` are not.