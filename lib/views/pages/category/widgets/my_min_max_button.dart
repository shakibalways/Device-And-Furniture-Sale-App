import 'package:belives_store_app_app/controller/getx/category/category.dart';
import 'package:flutter/material.dart';

class MyMinMaxButton extends StatelessWidget {
  const MyMinMaxButton({
    super.key,
    required this.controller, this.min, this.max,
  });

  final CatagoriesController controller;
  final void Function()? min;
  final void Function()? max;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap:min,
          child: Container(
            height: 60,
            width: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffF3F6F8)),
            child: const Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Min',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.minimize_sharp)
              ],
            )),
          ),
        ),
        GestureDetector(
          onTap:max,
          child: Container(
            height: 60,
            width: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffF3F6F8)),
            child: const Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Max',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.add)
              ],
            )),
          ),
        )
      ],
    );
  }
}
