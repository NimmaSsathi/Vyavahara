import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:vyavahara/main.dart';

void main() {
  testWidgets('FR-AU-01 language buttons switch the Home text', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: VyavaharaApp()));
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const Key('lang-kn')));
    await tester.pumpAndSettle();
    expect(find.text('ಮುಖಪುಟ'), findsOneWidget);

    await tester.tap(find.byKey(const Key('lang-hi')));
    await tester.pumpAndSettle();
    expect(find.text('होम'), findsOneWidget);

    await tester.tap(find.byKey(const Key('lang-en')));
    await tester.pumpAndSettle();
    expect(find.text('Home'), findsOneWidget);
  });
}
