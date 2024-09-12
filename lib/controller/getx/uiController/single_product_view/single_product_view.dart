import 'dart:ui';

import 'package:get/get.dart';

class SingleProductViewController extends GetxController {
  var selectedColorIndex = 0.obs; // Observable for color index
  RxBool isLoading = false.obs;
  List<Color> mycolors = [
    const Color(0xffC6AB59),
    const Color(0xffF8B6C3),
    const Color(0xff171717),
  ];

  void selectItem(int index) {
    if (selectedColorIndex.value == index) {
      selectedColorIndex.value = 0;
    } else {
      selectedColorIndex.value = index;
    }
  }
}
