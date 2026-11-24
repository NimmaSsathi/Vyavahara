import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import 'core/l10n/locale_controller.dart';
import 'core/theme/app_theme.dart';
import 'features/daily/ui/home_placeholder.dart';
import 'l10n/app_localizations.dart';

void main() {
  runApp(const ProviderScope(child: VyavaharaApp()));
}

class VyavaharaApp extends ConsumerWidget {
  const VyavaharaApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeControllerProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      locale: locale,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: [
        AppLocalizations.delegate,
        ...GlobalMaterialLocalizations.delegates,
      ],
      home: const HomePlaceholder(),
    );
  }
}