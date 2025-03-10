// ignore_for_file: prefer_const_constructors

import 'package:artefact_ui/artefact_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ArtefactUi', () {
    test('uses material 3', () {
      expect(
        ArtefactTheme(TextTheme())
            .theme(ColorScheme.fromSeed(seedColor: Colors.black))
            .useMaterial3,
        isTrue,
      );
    });
  });
}
