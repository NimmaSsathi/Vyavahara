import 'dart:ui';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'locale_controller.g.dart';

/// The three supported app languages (SRS: kn, hi, en).
abstract final class AppLocales {
  static const Locale kn = Locale('kn');
  static const Locale hi = Locale('hi');
  static const Locale en = Locale('en');
  static const List<Locale> all = <Locale>[kn, hi, en];
}

/// App language (FR-AU-01). Starts from the device language when supported,
/// otherwise English. Persistence arrives in M2.
@riverpod
class LocaleController extends _$LocaleController {
  @override
  Locale build() {
    final device = PlatformDispatcher.instance.locale.languageCode;
    for (final l in AppLocales.all) {
      if (l.languageCode == device) return l;
    }
    return AppLocales.en;
  }

  void select(Locale locale) => state = locale;
}