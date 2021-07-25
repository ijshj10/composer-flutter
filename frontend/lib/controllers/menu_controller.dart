import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = "OVERVIEW".obs;

  setActiveItem(String itemName) => activeItem.value = itemName;
  isActive(String itemName) => activeItem.value == itemName;
}
