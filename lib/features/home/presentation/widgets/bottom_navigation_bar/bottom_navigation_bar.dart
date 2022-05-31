import 'package:flutter/material.dart';

import '../../../../../core/consts/icon_paths.dart';
import 'bottom_navigation_bar_item.dart';

class QyreBottomNavigationBar extends StatelessWidget {
  const QyreBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Theme.of(context).colorScheme.onSurface,
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      iconSize: 20.0,
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: QyreBottomNavigationBarItem(
            iconPath: IconPaths.homeIconPath,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Menu',
          icon: QyreBottomNavigationBarItem(
            iconPath: IconPaths.menuIconPath,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Notifications',
          icon: QyreBottomNavigationBarItem(
            iconPath: IconPaths.notifications,
            notifications: 2,
          ),
        ),
      ],
    );
  }
}
