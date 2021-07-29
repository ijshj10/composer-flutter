import 'package:flutter/material.dart';

class MenuItem {
  final String name;
  final String route;
  final IconData icon;

  MenuItem(this.name, this.route, this.icon);
}

var sideMenuRoutes = {
  MenuItem("Overview", "/overview", Icons.home),
  MenuItem("Circuits", "/circuits", Icons.mode),
  MenuItem("Jobs", "/jobs", Icons.list),
  MenuItem("Account", "/account", Icons.person),
  MenuItem("Settings", "/settings", Icons.settings),
};
