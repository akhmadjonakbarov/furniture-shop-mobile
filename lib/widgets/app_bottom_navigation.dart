import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBottomNavigation extends StatefulWidget {
  const AppBottomNavigation({super.key});

  @override
  State<AppBottomNavigation> createState() => _AppBottomNavigationState();
}

class _AppBottomNavigationState extends State<AppBottomNavigation> {
  int _selectedIndex = 0;
  List<dynamic> menuItems = [
    {
      "icon": "assets/bar_icons/home.svg",
      "label": "Home",
    },
    {
      "icon": "assets/bar_icons/profile.svg",
      "label": "Profile",
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      showUnselectedLabels: true,
      unselectedItemColor: Colors.black87,
      elevation: 32.0,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(
        height: 1.5,
        fontSize: 12,
      ),
      unselectedLabelStyle: const TextStyle(
        height: 1.5,
        fontSize: 12,
      ),
      items: menuItems.map((menuItem) {
        return BottomNavigationBarItem(
          icon: SvgPicture.asset(
            menuItem["icon"],
            height: 30,
            width: 30,
          ),
          label: menuItem["label"],
        );
      }).toList(),
      currentIndex: 0,
      selectedItemColor: Theme.of(context).primaryColor,
      onTap: _onItemTapped,
    );
  }
}
