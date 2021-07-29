import 'package:flutter/material.dart';
import 'package:frontend/constants/routes.dart';
import 'package:frontend/controllers/menu_controller.dart';
import 'package:frontend/widgets/side_menu.dart';
import 'package:get/get.dart';

class SideMeunItem extends StatelessWidget {
  final MenuItem item;
  const SideMeunItem(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MenuController menuController = Get.find();
    return Obx(() => ListTile(
        selected: menuController.isActive(item.name),
        leading: Icon(item.icon),
        title: Text(item.name),
        onTap: () {
          Get.back();
          menuController.setActiveItem(item.name);
        }));
  }
}
