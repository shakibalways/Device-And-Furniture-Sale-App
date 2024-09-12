import 'package:belives_store_app_app/components/my_custom_button.dart';
import 'package:belives_store_app_app/components/my_custom_divider.dart';
import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyUserProfileBottomSheet extends StatelessWidget {
  const MyUserProfileBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: SingleChildScrollView(
        physics: const PageScrollPhysics(),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                color: const Color(0xffC6AB59),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/alarm.png",
                  height: 75,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const MyCustomText(
              title: "Tracking Order",
              fSize: 22,
              fWeight: FontWeight.bold,
            ),
            const SizedBox(height: 8),
            const MyCustomText(
              title: "Enter up to 25 tracking numbers, one per line.",
              fSize: 15,
            ),
            const SizedBox(height: 8),
            const MyCustomDivider(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Code",
                      suffixIcon: const Icon(Icons.search),
                      filled: true,
                      hoverColor: const Color(0xfff2f2f2),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(20),
              child: MyCustomButton(
                title: "Apply Filters (4)",
              ),
            )
          ],
        ),
      ),
    );
  }
}
