import 'package:components/widgets/_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Widget Card Test', (WidgetTester tester) async {
    await tester.pumpWidget(CardWidget(title: 'The main card'));
    var textTitle = find.byType(TextField);
    expect(textTitle, findsOneWidget);
  });
}
