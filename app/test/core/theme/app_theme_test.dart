import 'dart:math' as math;

import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:vyavahara/core/theme/app_colors.dart';

double _contrast(Color a, Color b) {
  final la = a.computeLuminance();
  final lb = b.computeLuminance();
  return (math.max(la, lb) + 0.05) / (math.min(la, lb) + 0.05);
}

void main() {
  // NFR-13: text contrast at least 4.5:1.
  test('NFR-13 ink on background', () {
    expect(
      _contrast(AppColors.ink, AppColors.background),
      greaterThanOrEqualTo(4.5),
    );
  });

  test('NFR-13 owes (red) on background', () {
    expect(
      _contrast(AppColors.owes, AppColors.background),
      greaterThanOrEqualTo(4.5),
    );
  });

  test('NFR-13 paid (green) on background', () {
    expect(
      _contrast(AppColors.paid, AppColors.background),
      greaterThanOrEqualTo(4.5),
    );
  });

  test('NFR-13 ink text on accent fill', () {
    expect(
      _contrast(AppColors.ink, AppColors.accent),
      greaterThanOrEqualTo(4.5),
    );
  });
}
