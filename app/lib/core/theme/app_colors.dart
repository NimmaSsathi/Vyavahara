import 'package:material_ui/material_ui.dart';

/// Colour tokens from SRS UI-03. Owes and paid colours must always be
/// paired with a text label (never colour alone).
abstract final class AppColors {
  static const Color ink = Color(0xFF1E2A3A);
  static const Color background = Color(0xFFF7F4EC);
  static const Color accent = Color(0xFFD9822B);
  static const Color owes = Color(0xFFB3261E);
  static const Color paid = Color(0xFF1B7F3B);
}
