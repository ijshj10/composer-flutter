import 'package:flutter/material.dart';
import 'package:frontend/constants/style.dart';
import 'package:frontend/controllers/menu_controller.dart';
import 'package:frontend/pages/login/login.dart';
import 'package:frontend/widgets/side_menu.dart';
import 'package:get/get.dart';

import 'pages/main/main.dart';

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
      initialRoute: "/",
      getPages: [
        GetPage(name: '/', page: () => Home()),
        GetPage(name: '/login', page: () => LoginPage())
      ],
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var isMobile = _width <= 920;
    return Scaffold(
      drawer: isMobile ? Drawer(child: SideMenu()) : null,
      appBar: isMobile
          ? AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            )
          : null,
      extendBodyBehindAppBar: true,
      backgroundColor: primaryBackground,
      body: isMobile
          ? Main()
          : Row(
              children: [
                Expanded(child: SideMenu()),
                Expanded(flex: 5, child: Main()),
              ],
            ),
    );
  }
}
