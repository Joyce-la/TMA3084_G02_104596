// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:lab_03_lesson_05/main.dart';

void main() {
  testWidgets('BrewBloomApp menu screen smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const BrewBloomApp());

    // Verify that our coffee menu is displayed.
    expect(find.text('Our Coffee Menu'), findsOneWidget);
    expect(find.text('Iced Latte'), findsOneWidget);
    expect(find.text('Cappuccino'), findsOneWidget);
  });
}
