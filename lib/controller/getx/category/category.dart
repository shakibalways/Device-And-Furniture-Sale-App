import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatagoriesController extends GetxController {
  RxBool isLoading = false.obs;
  // Gender selection
  var selectedIndex = 0.obs;
  // Price rate
  var priceValue = 20.0.obs;
  // Color selection
  var colorIndex = 0.obs;

  // List of available colors
  List<String> boxColor = [
    "0xffC6AB59",
    "0xff02C697",
    "0xffF8B6C3",
    "0xff3C79E6",
    "0xff171717",
    "0xff8F92A1",
    "0xff3C79E6",
    "0xffF8B6C3",
    "0xff02C697",
  ];
  // Gender List
  var gender = [
    "Male",
    "Female",
    "Other",
  ];
  // List of available colors for the product
  List<String> availableColors = [
    'Orange',
    'Cyan',
    'Lilac',
    'blue',
    'black',
    'grey',
    'blues',
    'lilacs',
    'cans'
  ];

  // Observable to track the selected color
  RxString selectedColor = 'red'.obs;

  // Function to change the selected color
  void selectColor(String color) {
    selectedColor.value = color;
  }

  Color getColorFromString(String colorString) {
    switch (colorString) {
      case "Orange":
        return const Color(0xffC6AB59);
      case 'Cyan':
        return const Color(0xff02C697);
      case 'Lilac':
        return const Color(0xffF8B6C3);
      case 'blue':
        return const Color(0xff3C79E6);
      case "black":
        return const Color(0xff171717);
      case "grey":
        return const Color(0xff8F92A1);
      case "blues":
        return const Color(0xff3C79E6);
      case "lilacs":
        return const Color(0xffF8B6C3);
      default:
        return const Color(0xff02C697);
    }
  }

  // Function to update selected gender index
  void updateSelectedIndex(int index) {
    selectedIndex.value = index;
  }

  // Function to update price rate
  void updatePrice(double value) {
    priceValue.value = value;
  }

  // Function to update selected color index
  void updateColorIndex(int index) {
    colorIndex.value = index;
  }
}
