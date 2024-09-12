import 'package:belives_store_app_app/components/my_custom_button.dart';
import 'package:belives_store_app_app/components/my_custom_divider.dart';
import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:belives_store_app_app/controller/getx/uiController/cart/cart.dart';
import 'package:belives_store_app_app/views/pages/cart/widgets/my_promo_code_container.dart';
import 'package:belives_store_app_app/components/my_custom_shipping_container.dart';
import 'package:belives_store_app_app/views/pages/payment_method/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CartController());
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_rounded),
        title: const Text(
          "MY CART",
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
        actions: const [Icon(Icons.more_horiz)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: width,
              decoration: BoxDecoration(
                  color: const Color(0xffF3F6F8),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/home_image/beosound.png",
                    height: 140,
                    fit: BoxFit.fitHeight,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const MyCustomText(
                        title: "Beosound 1",
                        fWeight: FontWeight.bold,
                      ),
                      Row(
                        children: [
                          const MyCustomText(
                            title: "Color",
                            fSize: 15,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const MyCustomText(
                            title: "Size",
                            fSize: 15,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                                child: MyCustomText(
                              title: "L",
                              color: Colors.white,
                              fSize: 13,
                            )),
                          ),
                        ],
                      ),
                      const MyCustomText(
                        title: "\$1,600",
                        fSize: 15,
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              controller.decrement();
                            },
                            child: const Text(
                              "-",
                              style: TextStyle(fontSize: 35),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Obx(
                              () => Text(
                                "${controller.quantity.value}",
                                style: const TextStyle(color: Colors.white),
                              ),
                            )),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          IconButton(
                              onPressed: () {
                                controller.increment();
                              },
                              icon: const Icon(Icons.add))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const Column(
              children: [
                MyCustomShippingContainer(),
                SizedBox(height: 12),
                MyPromoCodeContainer(),
              ],
            ),
            Column(
              children: [
                const MyCustomDivider(),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyCustomText(title: "Total:"),
                    MyCustomText(
                      title: "\$ 9,800",
                      fWeight: FontWeight.bold,
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                MyCustomButton(
                  title: "CHECKOUT",
                  icon: Icons.arrow_right_alt,
                  onTap: () {
                    Get.offAll(() => const PaymentMethodPage());
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
