import 'package:belives_store_app_app/views/pages/bottomNavBar/bottom_nav_bar.dart';
import 'package:belives_store_app_app/views/pages/category/cate.dart';
import 'package:belives_store_app_app/views/pages/category/categoryes.dart';
import 'package:belives_store_app_app/views/pages/order_review/order_review.dart';
import 'package:belives_store_app_app/views/pages/shipping/shipping_address.dart';
import 'package:belives_store_app_app/views/pages/shipping_new_address/google_maps.dart';
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
      home: CategoriesPages(),
    );
  }
}
