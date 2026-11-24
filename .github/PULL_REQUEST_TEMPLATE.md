## Summary

<!-- What changed and why -->

## Requirement IDs implemented

<!-- FR-..., VA-..., NFR-..., SEC-..., API-..., SCR-..., UI-... -->

## Tests

<!-- Tests added or updated. Name tests after the IDs they cover. -->

## Checklist

- [ ] Branch is named `feat/m<N>-<name>`; commits follow Conventional Commits
- [ ] `dart format`, `flutter analyze` and `flutter test` pass locally
- [ ] ARB parity check passes (`dart run tool/check_arb_parity.dart`)
- [ ] No hard-coded user-facing strings
- [ ] No secrets, names, phone numbers or amounts in code or logs
- [ ] Schema changes are a new numbered migration, mirrored in Drift
- [ ] No new dependency without an approved ADR