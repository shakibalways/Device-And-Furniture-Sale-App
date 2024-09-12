import 'package:belives_store_app_app/components/my_custom_appbar.dart';
import 'package:belives_store_app_app/components/my_custom_button.dart';
import 'package:belives_store_app_app/components/my_custom_divider.dart';
import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:belives_store_app_app/data%20model/order_list.dart';
import 'package:belives_store_app_app/views/pages/order_failed/order_failed.dart';
import 'package:belives_store_app_app/views/pages/single_product_view/single_product_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentSuccessfullyPage extends StatelessWidget {
  const PaymentSuccessfullyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const MyCustomAppBar(
        title: MyCustomText(
          title: "ORDER COMPLETE",
          fSize: 16,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                height: height * 0.14,
                width: width * 0.30,
                decoration: BoxDecoration(
                  color: const Color(0xffC6AB59),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Image.asset(
                    "assets/images/alarm.png",
                    height: 75,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const MyCustomText(
                title: "Payment Successful!",
                fSize: 23,
                fWeight: FontWeight.bold,
              ),
              const SizedBox(height: 10),
              const MyCustomText(
                title: "Orders will arrive in 3 days!",
                color: Colors.grey,
                fSize: 15,
              ),
              const SizedBox(height: 25),
              const MyCustomDivider(),
              const SizedBox(height: 10),
              SizedBox(
                height: 170,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: placeOrder.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: GestureDetector(
                              onTap: () {
                                Get.to(() => const SingleProductViewPage());
                              },
                              child: Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: const Color(0xffF3F6F8),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset(placeOrder[index].imagePath),
                              ),
                            ),
                          ),
                          MyCustomText(
                            title: placeOrder[index].text,
                            fWeight: FontWeight.w500,
                            fSize: 15,
                          )
                        ],
                      );
                    }),
              ),
            ],
          ),
          const SizedBox(height: 25),
          MyCustomButton(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            title: "SEE ORDER DETAILS ",
            fWeight: FontWeight.bold,
            icon: Icons.arrow_right_alt,
            onTap: () {
              Get.to(() => const OrderFailedPage());
            },
          )
        ],
      ),
    );
  }
}
