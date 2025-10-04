import 'dart:async';

import 'package:artefact/app/app.dart';
import 'package:artefact/bootstrap.dart';

void main() {
  unawaited(bootstrap(() => const App()));
}
