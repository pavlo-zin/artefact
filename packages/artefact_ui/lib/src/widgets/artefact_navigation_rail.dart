import 'package:artefact_ui/artefact_ui.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

/// A navigation rail for the Artefact app.
class ArtefactNavigationRail extends StatelessWidget {
  const ArtefactNavigationRail({
    required this.destinations,
    required this.selectedIndex,
    this.onDestinationSelected,
    this.trailing,
    super.key,
  });

  /// The destinations to display in the navigation rail.
  final List<Destination> destinations;

  /// The index of the selected destination.
  final int selectedIndex;

  /// A callback that is called when a destination is selected.
  final ValueChanged<int>? onDestinationSelected;

  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          const BoxConstraints(maxWidth: 80, maxHeight: 500, minHeight: 500),
      child: Center(
        child: GlassContainer.clearGlass(
          borderColor: Colors.black12,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          child: NavigationRail(
            selectedIndex: selectedIndex,
            onDestinationSelected: onDestinationSelected,
            destinations: destinations.map((destination) {
              return NavigationRailDestination(
                icon: destination.widget,
                label: Text(destination.label),
              );
            }).toList(),
            leading: const SizedBox(height: 200),
            trailing: trailing,
          ),
        ),
      ),
    );
  }
}
