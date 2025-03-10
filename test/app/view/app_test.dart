import 'package:artefact/app/app.dart';
import 'package:artefact/app_router/view/view.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders ArtefactScaffold', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(ArtefactScaffold), findsOneWidget);
    });
  });
}
