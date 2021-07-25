import 'package:flutter/material.dart';
import 'package:frontend/constants/controllers.dart';
import 'package:frontend/constants/style.dart';
import 'package:frontend/widgets/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: sideMenuRoutes
            .map((item) => SideMeunItem(
                itemName: item.name,
                onTap: () {
                  menuController.setActiveItem(item.name);
                }))
            .toList());
  }
}

class MenuItem {
  final String name;
  final String route;
  final IconData icon;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuRoutes = [
  MenuItem("Overview", "/overview"),
  MenuItem("Circuits", "/circuits"),
  MenuItem("Jobs", "/jobs"),
  MenuItem("Account", "/account"),
  MenuItem("Settings", "/settings"),
];
