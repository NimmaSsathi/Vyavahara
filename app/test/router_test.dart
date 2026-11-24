import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vyavahara/features/daily/ui/home_placeholder.dart';
import 'package:vyavahara/main.dart';

void main() {
  testWidgets('SCR-08 root route shows the Home placeholder', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: VyavaharaApp()));
    await tester.pumpAndSettle();
    expect(find.byType(HomePlaceholder), findsOneWidget);
  });
}
