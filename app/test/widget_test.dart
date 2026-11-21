import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vyavahara/main.dart';

void main() {
  testWidgets('app boots inside a ProviderScope', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: VyavaharaApp()));
    expect(find.byType(Scaffold), findsOneWidget);
  });
}