import 'package:flutter/widgets.dart';

enum ArtefactLayoutData {
  /// A small layout.
  ///
  /// Typically used for mobile devices.
  small,

  /// A medium layout.
  ///
  /// Typically used for tablets.
  medium,

  /// A large layout.
  ///
  /// Typically used for desktops.
  large;

  /// Derives the layout from the given [windowSize].
  static ArtefactLayoutData _derive(Size windowSize) {
    if (windowSize.width < windowSize.height ||
        windowSize.width < ArtefactLayout.mobileBreakpoint) {
      return ArtefactLayoutData.small;
    }
    if (windowSize.width < ArtefactLayout.desktopBreakpoint) {
      return ArtefactLayoutData.medium;
    }
    return ArtefactLayoutData.large;
  }
}

/// Derives and provides [ArtefactLayoutData] to its descendants.
class ArtefactLayout extends StatelessWidget {
  const ArtefactLayout({
    required this.child,
    this.data,
    super.key,
  });

  /// The threshold width at which the layout should change between small and
  /// medium.
  static const double mobileBreakpoint = 700;

  /// The threshold width at which the layout should change between medium and
  /// large.
  static const double desktopBreakpoint = 1200;

  /// The layout to provide to the child.
  ///
  /// If `null` it is derived from the current size of the window. Otherwise,
  /// it will be fixed to the provided value.
  final ArtefactLayoutData? data;

  /// The child widget which will have access to the current
  /// [ArtefactLayoutData].
  final Widget child;

  /// Retrieves the closest [_ArtefactLayoutScope] from the given [context].
  static ArtefactLayoutData of(BuildContext context) {
    final layout =
        context.dependOnInheritedWidgetOfExactType<_ArtefactLayoutScope>();
    assert(layout != null, 'No ArtefactLayout found in context');
    return layout!.layout;
  }

  @override
  Widget build(BuildContext context) {
    return _ArtefactLayoutScope(
      layout: data ?? ArtefactLayoutData._derive(MediaQuery.sizeOf(context)),
      child: child,
    );
  }
}

/// A widget which provides the current [ArtefactLayoutData] to its descendants.
class _ArtefactLayoutScope extends InheritedWidget {
  const _ArtefactLayoutScope({
    required super.child,
    required this.layout,
  });

  final ArtefactLayoutData layout;

  @override
  bool updateShouldNotify(covariant _ArtefactLayoutScope oldWidget) {
    return layout != oldWidget.layout;
  }
}
