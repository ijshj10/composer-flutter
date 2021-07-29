import 'package:get/get.dart';

class MenuController extends GetxController {
  var activeItem = "Circuits".obs;

  setActiveItem(String itemName) => activeItem.value = itemName;
  isActive(String itemName) => activeItem.value == itemName;
}
