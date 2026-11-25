import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../core/l10n/locale_controller.dart';
import '../../../l10n/app_localizations.dart';

/// TEMPORARY placeholder Home. Replaced by the router (module 5) and
/// SCR-08 (M3).
class HomePlaceholder extends ConsumerWidget {
  const HomePlaceholder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = AppLocalizations.of(context);
    final controller = ref.read(localeControllerProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: Text(t.homeTitle)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                t.appName,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 8),
              Text(t.tagline),
              const SizedBox(height: 24),
              Text(t.chooseLanguage),
              const SizedBox(height: 8),
              FilledButton(
                key: const Key('lang-kn'),
                onPressed: () => controller.select(AppLocales.kn),
                child: Text(t.languageKannada),
              ),
              const SizedBox(height: 8),
              FilledButton(
                key: const Key('lang-hi'),
                onPressed: () => controller.select(AppLocales.hi),
                child: Text(t.languageHindi),
              ),
              const SizedBox(height: 8),
              FilledButton(
                key: const Key('lang-en'),
                onPressed: () => controller.select(AppLocales.en),
                child: Text(t.languageEnglish),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
