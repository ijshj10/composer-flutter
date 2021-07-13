import 'package:flutter/material.dart';
import 'package:frontend/components/side_menu.dart';
import 'package:frontend/screens/dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(child: SideMenu()),
          Expanded(flex: 5, child: DashboardScreen())
        ]),
      ),
    );
  }
}
