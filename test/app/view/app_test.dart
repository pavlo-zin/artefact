import 'package:artefact/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('App widget builds without errors', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(const TickerMode(enabled: false, child: App()));

      await tester.pump(const Duration(seconds: 1));

      expect(find.byType(MaterialApp), findsOneWidget);
    });

    testWidgets('App widget has the correct routerConfig', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(const TickerMode(enabled: false, child: App()));
      await tester.pump(const Duration(seconds: 1));

      final materialAppWidget = tester.widget<MaterialApp>(
        find.byType(MaterialApp),
      );

      expect(materialAppWidget.routerConfig, equals(routerConfig));
    });
  });
}
