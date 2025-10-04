// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Artéfact';

  @override
  String get homeLabel => 'Home';

  @override
  String get featuredTitle => 'FEATURED';

  @override
  String get browseAllTitle => 'BROWSE ALL';

  @override
  String get quotesLabel => 'Quote';

  @override
  String get actionBack => 'Back';

  @override
  String artefactId(Object id) {
    return 'ARTÉFACT $id';
  }

  @override
  String get epoch => 'Epoch';

  @override
  String get valuation => 'Valuation';

  @override
  String get geography => 'Geography';

  @override
  String get artefactType => 'Artéfact Type';
}
