import 'package:animations/animations.dart';
import 'package:artefact/app_router/view/view.dart';
import 'package:artefact/l10n/l10n.dart';
import 'package:artefact/theme_toggle/theme_toggle.dart';
import 'package:artefact_ui/artefact_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ArtefactScaffold extends StatelessWidget {
  const ArtefactScaffold({
    required this.navigationShell,
    required this.children,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ArtefactScaffoldView(navigationShell, children);
  }
}

class ArtefactScaffoldView extends StatelessWidget {
  const ArtefactScaffoldView(this.navigationShell, this.children, {super.key});

  final StatefulNavigationShell navigationShell;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final layout = ArtefactLayout.of(context);
    final l10n = context.l10n;

    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    final destinations = <Destination>[
      Destination(const Icon(Icons.home), l10n.homeLabel),
      Destination(const Icon(Icons.format_quote), l10n.quotesLabel),
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: LayoutBuilder(
        builder: (context, constraints) => Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        if (isDarkMode)
                          const DarkBackground()
                        else
                          const LightBackground(),
                        PageTransitionSwitcher(
                          transitionBuilder:
                              (
                                Widget child,
                                Animation<double> animation,
                                Animation<double> secondaryAnimation,
                              ) {
                                return FadeThroughTransition(
                                  fillColor: Colors.transparent,
                                  animation: animation,
                                  secondaryAnimation: secondaryAnimation,
                                  child: child,
                                );
                              },
                          child: children[navigationShell.currentIndex],
                        ),
                        if (layout != ArtefactLayoutData.small)
                          Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: ArtefactNavigationRail(
                              destinations: destinations,
                              selectedIndex: navigationShell.currentIndex,
                              onDestinationSelected: (index) {
                                navigationShell.goBranch(
                                  index,
                                  initialLocation:
                                      index == navigationShell.currentIndex,
                                );
                              },
                              trailing: const ThemeToggleButton(),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: (layout == ArtefactLayoutData.small)
          ? ArtefactBottomNavigationBar(
              destinations: destinations,
              selectedIndex: navigationShell.currentIndex,
              onDestinationSelected: (index) {
                navigationShell.goBranch(
                  index,
                  initialLocation: index == navigationShell.currentIndex,
                );
              },
            )
          : null,
    );
  }
}
