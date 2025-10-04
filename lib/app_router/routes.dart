import 'package:artefact/app_router/view/view.dart';
import 'package:artefact/overview/view/overview_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedStatefulShellRoute<HomeScreenRouteData>(
  branches: [
    TypedStatefulShellBranch<OverviewPageBranchData>(
      routes: [
        TypedGoRoute<OverviewPageRouteData>(
          name: 'overview',
          path: '/overview',
        ),
      ],
    ),
    TypedStatefulShellBranch<MusicPageBranchData>(
      routes: [
        TypedGoRoute<MusicPlayerPageRouteData>(name: 'music', path: '/music'),
      ],
    ),
  ],
)
@immutable
class HomeScreenRouteData extends StatefulShellRouteData {
  const HomeScreenRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) => navigationShell;

  static Widget $navigatorContainerBuilder(
    BuildContext context,
    StatefulNavigationShell navigationShell,
    List<Widget> children,
  ) {
    return ArtefactScaffold(
      navigationShell: navigationShell,
      children: children,
    );
  }
}

@immutable
class OverviewPageBranchData extends StatefulShellBranchData {
  const OverviewPageBranchData();
}

@immutable
class OverviewPageRouteData extends GoRouteData with $OverviewPageRouteData {
  const OverviewPageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OverviewPage();
}

@immutable
class MusicPageBranchData extends StatefulShellBranchData {
  const MusicPageBranchData();
}

@immutable
class MusicPlayerPageRouteData extends GoRouteData
    with $MusicPlayerPageRouteData {
  const MusicPlayerPageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) => Center(
    child: SizedBox(
      width: 650,
      child: Card.filled(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Theme.of(
          context,
        ).colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            // Intentionally long quote text for visual impact
            // ignore: lines_longer_than_80_chars
            "Every memory is an artefact—a relic of time that whispers the eternal tales of our soul's journey.",
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
      ),
    ),
  );
}
