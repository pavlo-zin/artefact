import 'package:artefact_ui/artefact_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ArtefactUi', () {
    test('uses material 3', () {
      expect(
        const ArtefactTheme(
          TextTheme(),
        ).theme(ColorScheme.fromSeed(seedColor: Colors.black)).useMaterial3,
        isTrue,
      );
    });
  });
}
