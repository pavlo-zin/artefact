import 'package:artefact_ui/artefact_ui.dart';
import 'package:flutter/material.dart';

/// A custom bottom navigation bar for the Artefact app.
class ArtefactBottomNavigationBar extends StatelessWidget {
  const ArtefactBottomNavigationBar({
    required this.destinations,
    required this.selectedIndex,
    this.onDestinationSelected,
    super.key,
  });

  /// The destinations to display in the bottom navigation bar.
  final List<Destination> destinations;

  /// The index of the selected destination.
  final int selectedIndex;

  /// A callback that is called when a destination is selected.
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      destinations: destinations.map((destination) {
        return NavigationDestination(
          icon: destination.widget,
          label: destination.label,
        );
      }).toList(),
    );
  }
}
