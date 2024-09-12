import 'package:belives_store_app_app/components/custom_cache_network.dart';
import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCategoriesContainer extends StatelessWidget {
  const MyCategoriesContainer({
    super.key,
    required this.imageUrl,
    required this.productName,
    required this.rating,
    required this.amount,
  });


  final String imageUrl;
  final String productName;
  final String rating;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: Get.height * 0.25,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            CustomCacheNetwork(
              imageUrl: imageUrl,
              height: Get.height * 0.20,
              width: Get.width * 0.33,
              fit: BoxFit.fitHeight,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyCustomText(
                  title: productName,
                  fWeight: FontWeight.w500,
                  fSize: 22,
                ),
                Row(
                  children: [
                    MyCustomText(
                      title: rating,
                      fSize: 20,
                      fWeight: FontWeight.w400,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    for (int i = 0; i <= 4; i++)
                      const Icon(
                        Icons.star,
                        color: Colors.orange,
                      )
                  ],
                ),
                MyCustomText(title: "\$ $amount"),
              ],
            )
          ],
        ),
      ),
    );
  }
}