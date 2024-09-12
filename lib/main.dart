import 'package:belives_store_app_app/views/pages/bottomNavBar/bottom_nav_bar.dart';
import 'package:belives_store_app_app/views/pages/my_account/my_account.dart';
import 'package:belives_store_app_app/views/pages/payment_method/payment_method.dart';
import 'package:belives_store_app_app/views/pages/splash/splash.dart';
import 'package:belives_store_app_app/views/pages/user_profile/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
