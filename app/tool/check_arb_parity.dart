import 'dart:convert';
import 'dart:io';

/// NFR-12: every ARB file must define exactly the same message keys,
/// and no message may be empty.
/// Usage (from app/): dart run tool/check_arb_parity.dart [arb-dir]
Future<void> main(List<String> args) async {
  final dir = args.isEmpty ? 'l10n' : args.first;
  const langs = <String>['en', 'kn', 'hi'];
  final keysByLang = <String, Set<String>>{};
  var failed = false;

  for (final lang in langs) {
    final file = File('$dir/app_$lang.arb');
    if (!file.existsSync()) {
      stderr.writeln('Missing file: ${file.path}');
      exit(1);
    }
    final map =
        jsonDecode(await file.readAsString()) as Map<String, dynamic>;
    final messages = <String, dynamic>{
      for (final e in map.entries)
        if (!e.key.startsWith('@')) e.key: e.value,
    };
    keysByLang[lang] = messages.keys.toSet();
    for (final e in messages.entries) {
      final value = e.value;
      if (value is! String || value.trim().isEmpty) {
        stderr.writeln('Empty or non-string value: $lang/${e.key}');
        failed = true;
      }
    }
  }

  final all = keysByLang.values.expand((k) => k).toSet();
  for (final lang in langs) {
    final missing = all.difference(keysByLang[lang]!);
    if (missing.isNotEmpty) {
      stderr.writeln('$lang is missing: ${missing.toList()..sort()}');
      failed = true;
    }
  }

  if (failed) exit(1);
  stdout.writeln('ARB parity OK: ${all.length} keys in ${langs.join(', ')}');
}
