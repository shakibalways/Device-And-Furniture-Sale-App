import 'package:belives_store_app_app/components/my_custom_button.dart';
import 'package:belives_store_app_app/controller/getx/uiController/auth/otp/otp.dart';
import 'package:belives_store_app_app/utilits/constant/text_list.dart';
import 'package:belives_store_app_app/views/pages/auth/otp/widgets/my_custom_otp_auth.dart';
import 'package:belives_store_app_app/views/pages/bottomNavBar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpAuthenticationPage extends StatelessWidget {
  const OtpAuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final otpController = Get.put(OtpController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 50,
        ),
        child: Column(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  RTexts.otpText,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(RTexts.otpSub),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyCustomOtpAuth(
                  controller: otpController.otp1,
                ),
                MyCustomOtpAuth(
                  controller: otpController.otp2,
                ),
                MyCustomOtpAuth(
                  controller: otpController.otp3,
                ),
                MyCustomOtpAuth(
                  controller: otpController.otp4,
                ),
              ],
            ),
            const Spacer(),
            MyCustomButton(
              onTap: () {
                Get.offAll(() => const BottomNavBarPage());
              },
              title: "Continue",
              icon: Icons.arrow_forward,
            )
          ],
        ),
      ),
    );
  }
}
