import 'package:artefact/app_router/app_router.dart';
import 'package:artefact/l10n/l10n.dart';
import 'package:artefact/theme_toggle/cubit/theme_toggle_cubit.dart';
import 'package:artefact_ui/artefact_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter routerConfig = AppRouter().routes;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    final textTheme = createTextTheme(context, 'Lato', 'Playfair Display');

    final theme = ArtefactTheme(textTheme);
    return ArtefactLayout(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => ThemeToggleCubit(
              initialMode: brightness == Brightness.light
                  ? ThemeMode.light
                  : ThemeMode.dark,
            ),
          ),
        ],
        child: BlocBuilder<ThemeToggleCubit, ThemeMode>(
          builder: (context, themeMode) {
            return MaterialApp.router(
              theme: themeMode == ThemeMode.light
                  ? theme.light()
                  : theme.dark(),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              routerConfig: routerConfig,
            );
          },
        ),
      ),
    );
  }
}
