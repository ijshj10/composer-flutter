import 'package:flutter/material.dart';
import 'package:frontend/constants/controllers.dart';
import 'package:get/get.dart';

class SideMeunItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;
  const SideMeunItem({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: onTap,
        title: Obx(() => Column(children: [
              Container(
                padding: EdgeInsets.only(top: 50, bottom: 20),
                child: Icon(toIcon(itemName),
                    color: Colors.white.withOpacity(
                        menuController.isActive(itemName) ? 1 : 0.2)),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 30),
                child: Visibility(
                    visible: menuController.isActive(itemName),
                    child:
                        Text(itemName, style: TextStyle(color: Colors.white))),
              )
            ])));
  }
}

IconData toIcon(String itemName) {
  if (itemName == "Overview") {
    return Icons.home;
  } else if (itemName == "CIRCUITS") {
    return Icons.mode;
  } else if (itemName == "JOBS") {
    return Icons.list;
  } else if (itemName == "ACCOUNT") {
    return Icons.person;
  } else {
    return Icons.settings;
  }
}
