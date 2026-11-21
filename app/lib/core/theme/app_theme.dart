import 'package:material_ui/material_ui.dart';

import 'app_colors.dart';

/// Light theme per SRS UI-01 (touch targets) and UI-03 (colours).
/// Fonts (UI-02) are added in the next step.
abstract final class AppTheme {
  static ThemeData get light {
    const scheme = ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.ink,
      onPrimary: AppColors.background,
      // Accent is a fill colour only; text on it must be ink (contrast).
      secondary: AppColors.accent,
      onSecondary: AppColors.ink,
      error: AppColors.owes,
      onError: Color(0xFFFFFFFF),
      surface: AppColors.background,
      onSurface: AppColors.ink,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: AppColors.background,
      materialTapTargetSize: MaterialTapTargetSize.padded,
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          // UI-01: primary buttons at least 56 dp tall, full width.
          minimumSize: const Size.fromHeight(56),
        ),
      ),
      textTheme: const TextTheme(
        // UI-02: body 16 sp, amounts 20-48 sp bold.
        bodyMedium: TextStyle(fontSize: 16),
        bodyLarge: TextStyle(fontSize: 16),
      ),
    );
  }
}
