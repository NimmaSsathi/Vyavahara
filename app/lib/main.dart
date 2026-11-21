import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import 'core/theme/app_theme.dart';

void main() {
  runApp(const ProviderScope(child: VyavaharaApp()));
}

class VyavaharaApp extends StatelessWidget {
  const VyavaharaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const Scaffold(body: SizedBox.shrink()),
    );
  }
}
