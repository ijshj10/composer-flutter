import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(child: Icon(Icons.dashboard, size: 40)),
        ListTile(
          onTap: () {},
          title: Text(
            "Circuit",
            style: TextStyle(color: Colors.white54),
          ),
        ),
        ListTile(
          onTap: () {},
          title: Text(
            "Editor",
            style: TextStyle(color: Colors.white54),
          ),
        ),
        ListTile(
          onTap: () {},
          title: Text(
            "Run",
            style: TextStyle(color: Colors.white54),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, size: 20),
          ),
        )
      ],
    ));
  }
}
