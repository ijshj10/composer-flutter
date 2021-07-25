import 'package:flutter/material.dart';
import 'package:frontend/constants/style.dart';
import 'package:frontend/controllers/menu_controller.dart';
import 'package:frontend/pages/overview/overview.dart';
import 'package:frontend/widgets/side_menu.dart';
import 'package:get/get.dart';

void main() {
  Get.put(MenuController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'IonQC@SNU',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: SideMenu()),
          Expanded(flex: 5, child: OverviewPage()),
        ],
      ),
    );
  }
}
