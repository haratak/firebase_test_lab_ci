import 'package:firebase_test_lab_ci/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('test', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.tap(find.byKey(const Key('navigate')));
    await tester.pumpAndSettle();
    expect(find.byType(SecondPage), findsOneWidget);
  });
}
