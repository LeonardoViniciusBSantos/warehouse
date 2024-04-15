import 'package:flutter/material.dart';
import 'package:warehouse/models/destination.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.destinations,
  }) : super(key: key);

  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  final List<NavigationDestination> destinations;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onDestinationSelected,
      items: destinations
          .map((destination) => BottomNavigationBarItem(
        icon: destination.icon,
        label: destination.label,
      ))
          .toList(),
    );
  }
}

class NavigationDestination {
  const NavigationDestination({
    required this.icon,
    required this.label,
  });

  final Icon icon;
  final String label;
}
