// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'Artéfact';

  @override
  String get homeLabel => 'Inicio';

  @override
  String get featuredTitle => 'DESTACADO';

  @override
  String get browseAllTitle => 'VER TODO';

  @override
  String get quotesLabel => 'Citas';

  @override
  String get actionBack => 'Atrás';

  @override
  String artefactId(Object id) {
    return 'ARTEFACTO $id';
  }

  @override
  String get epoch => 'Época';

  @override
  String get valuation => 'Valoración';

  @override
  String get geography => 'Geografía';

  @override
  String get artefactType => 'Tipo de artefacto';
}
