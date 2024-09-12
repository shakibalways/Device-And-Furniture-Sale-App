import 'package:belives_store_app_app/components/my_custom_appbar.dart';
import 'package:belives_store_app_app/components/my_custom_button.dart';
import 'package:belives_store_app_app/components/my_custom_divider.dart';
import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:belives_store_app_app/views/pages/help/help.dart';
import 'package:belives_store_app_app/views/pages/my_account/my_account.dart';
import 'package:belives_store_app_app/views/pages/payment_method/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderFailedPage extends StatelessWidget {
  const OrderFailedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const MyCustomAppBar(
          title: MyCustomText(
        title: "ORDER FAILED",
        fSize: 16,
        fWeight: FontWeight.bold,
      )),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  height: height * 0.14,
                  width: width * 0.30,
                  decoration: BoxDecoration(
                    color: const Color(0xffF8B6C3),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/images/cancel.png",
                      height: 75,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Order Failed",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Your payment occurred an error.",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const MyCustomDivider(),
            Column(
              children: [
                Image.asset("assets/images/worry.png"),
                const Text(
                  "Do not worry 😉",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                MyCustomText(
                  title: "Keep calm, sometimes it happens"
                      "\nPlease go back and check your payment method "
                      "\nor contact us",
                  color: Colors.grey,
                  tAlign: TextAlign.center,
                  fSize: 14,
                  mLines: 3,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                MyCustomButton(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  title: "REVIEW PAYMENT METHOD",
                  fWeight: FontWeight.w600,
                  lIcon: Icons.arrow_back_rounded,
                  onTap: () {
                    Get.to(() => const MyAccountPage());
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                MyCustomButton(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  title: "Please...I need help!",
                  fWeight: FontWeight.w600,
                  fSize: 16,
                  color: Colors.grey.shade300,
                  icon: Icons.schedule_send_sharp,
                  onTap: () {
                    Get.to(() => const HelpPage());
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
