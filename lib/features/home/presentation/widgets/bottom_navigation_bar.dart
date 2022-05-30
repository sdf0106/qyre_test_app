import 'package:flutter/material.dart';

class QyreBottomNavigationBar extends StatelessWidget {
  const QyreBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.black,
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(
            Icons.home,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Menu',
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Notifications',
          icon: Icon(
            Icons.notifications_on,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}