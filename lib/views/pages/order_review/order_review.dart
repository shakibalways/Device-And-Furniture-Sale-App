import 'package:belives_store_app_app/components/my_custom_appbar.dart';
import 'package:belives_store_app_app/components/my_custom_button.dart';
import 'package:belives_store_app_app/components/my_custom_divider.dart';
import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:belives_store_app_app/data%20model/order_list.dart';
import 'package:belives_store_app_app/components/my_custom_shipping_container.dart';
import 'package:belives_store_app_app/views/pages/payment_successful/payment_successfully.dart';
import 'package:belives_store_app_app/views/pages/shipping_new_address/google_maps.dart';
import 'package:belives_store_app_app/views/pages/single_product_view/single_product_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderReviewPage extends StatelessWidget {
  const OrderReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const MyCustomAppBar(
        title: MyCustomText(
          title: "ORDER REVIEW",
          fSize: 16,
        ),
        icon: Icons.more_horiz,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyCustomText(
                      title: "Products",
                      fSize: 15,
                      fWeight: FontWeight.bold,
                    ),
                    Icon(Icons.arrow_drop_down_circle_outlined)
                  ],
                ),
                SizedBox(
                  height: height * 0.21,
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
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffF3F6F8),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child:
                                      Image.asset(placeOrder[index].imagePath),
                                ),
                              ),
                            ),
                            Text(placeOrder[index].text)
                          ],
                        );
                      }),
                ),
                const MyCustomDivider(),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MyCustomText(
                  title: "SHIPPING",
                  fSize: 15,
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(()=>const GoogleMaps());
                  },
                  child: Container(
                   decoration: BoxDecoration(
                     color: Colors.grey.shade200,
                     borderRadius: BorderRadius.circular(5)
                   ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.location_on_outlined),
                        const MyCustomText(
                          title: "139 Haystreet,Perth",
                          fWeight: FontWeight.w600,
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              color: const Color(0xffC6AB59),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Center(
                              child: MyCustomText(
                            title: "Change",
                            fSize: 14,
                            fWeight: FontWeight.w500,
                          )),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const MyCustomShippingContainer(),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MyCustomText(
                  title: "PAYMENT",
                  color: Colors.grey,
                  fSize: 15,
                ),
                const SizedBox(height: 10),
                Container(
                  height: height * .06,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("assets/pay_page_im/bank_icon.png"),
                      const MyCustomText(
                        title: "* * * *  9000",
                        fWeight: FontWeight.bold,
                        color: Colors.white,
                        fSize: 16,
                      ),
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                            color: const Color(0xffC6AB59),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Center(
                          child: Text(
                            "Change",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const MyCustomDivider(),
              ],
            ),
            Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyCustomText(
                      title: "Shipping",
                      color: Colors.grey,
                    ),
                    MyCustomText(
                      title: "Free",
                      color: Colors.grey,
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyCustomText(title: "Total"),
                    MyCustomText(title: "\$ 9,800")
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                MyCustomButton(
                  title: "PLACE ORDER",
                  fWeight: FontWeight.w600,
                  icon: Icons.arrow_right_alt,
                  onTap: () {
                    Get.to(() => const PaymentSuccessfullyPage());
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
