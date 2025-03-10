import 'package:artefact/app_router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  AppRouter({bool debugLogDiagnostics = false}) {
    _goRouter = _routes(debugLogDiagnostics);
  }

  late final GoRouter _goRouter;

  GoRouter get routes => _goRouter;

  GoRouter _routes(bool debugLogDiagnostics) {
    return GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: const OverviewPageRouteData().location,
      debugLogDiagnostics: debugLogDiagnostics,
      routes: $appRoutes,
    );
  }
}
