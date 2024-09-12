import 'package:belives_store_app_app/controller/getx/category/category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyGenderContainer extends StatelessWidget {
  const MyGenderContainer({
    super.key,
    required this.controller,
  });

  final CatagoriesController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(()=> Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(3, (index) {
          return GestureDetector(
            onTap: () {
              controller.updateSelectedIndex(index);
            },
            child: Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                  color: controller.selectedIndex.value == index
                      ? const Color(0xffC6AB59)
                      : const Color(0xffF3F6F8),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  controller.gender[index],
                  style: TextStyle(
                    color: controller.selectedIndex.value == index
                        ? const Color(0xffF3F6F8)
                        : Colors.black,
                  ),
                ),
              ),
            ),
          );
        })) ) ;
  }
}
