import 'package:belives_store_app_app/components/my_custom_divider.dart';
import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:belives_store_app_app/controller/getx/category/category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'my_gender_container.dart';
import 'my_min_max_button.dart';

class MyCustomBottomSheet extends StatelessWidget {
  const MyCustomBottomSheet({
    super.key,
    required this.height,
    required this.width,
    required this.controller,
  });

  final double height;
  final double width;
  final CatagoriesController controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: height * .58,
              width: width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MyCustomText(
                          title: "Gender",
                          fWeight: FontWeight.bold,
                          fSize: 16,
                        ),
                        const SizedBox(height: 10),
                        // Gender Container List
                        MyGenderContainer(
                          controller: controller,
                        ),
                        // Gender Container List
                        const SizedBox(
                          height: 10,
                        ),
                        const MyCustomDivider(),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MyCustomText(
                          title: "Price Rate",
                          fWeight: FontWeight.bold,
                          fSize: 15,
                        ),
                        Obx(() {
                          return Slider(
                              min: 0,
                              max: 50,
                              divisions: 20,
                              label: controller.priceValue.value
                                  .round()
                                  .toString(),
                              value: controller.priceValue.value,
                              onChanged: (value) {
                                controller.updatePrice(value);
                              });
                        }),
                        const SizedBox(
                          height: 8,
                        ),
                        //My Min and Max Button
                        MyMinMaxButton(
                          controller: controller,
                          min: () {
                            if (controller.priceValue.value > 0) {
                              controller
                                  .updatePrice(controller.priceValue.value - 1);
                            }
                          },
                          max: () {
                            if (controller.priceValue.value < 50) {
                              controller
                                  .updatePrice(controller.priceValue.value + 1);
                            }
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const MyCustomDivider(),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MyCustomText(
                          title: "Color",
                          fWeight: FontWeight.bold,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const ScrollPhysics(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: controller.availableColors.map((color) {
                              return Obx(
                                () => GestureDetector(
                                  onTap: () {
                                    controller.selectColor(color);
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 55,
                                    margin: const EdgeInsets.all(8),
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:
                                          controller.getColorFromString(color),
                                      border: Border.all(
                                        color: controller.selectedColor.value ==
                                                color
                                            ? Colors.black
                                            : Colors.transparent,
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
      child: const Icon(
        Icons.import_export,
        size: 30,
      ),
    );
  }
}
