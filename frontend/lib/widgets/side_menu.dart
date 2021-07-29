import 'package:flutter/material.dart';
import 'package:frontend/constants/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:frontend/widgets/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
      DrawerHeader(
        child: Center(
            child: Text("Composer", style: GoogleFonts.montez(fontSize: 40))),
      )
    ]..addAll(sideMenuRoutes.map((item) => SideMeunItem(item))));
  }
}
