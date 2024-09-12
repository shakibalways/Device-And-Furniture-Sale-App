import 'package:belives_store_app_app/components/my_custom_appbar.dart';
import 'package:belives_store_app_app/components/my_custom_button.dart';
import 'package:belives_store_app_app/components/my_custom_divider.dart';
import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:belives_store_app_app/controller/getx/uiController/payment_method/payment_method.dart';
import 'package:belives_store_app_app/views/pages/add_new_card/add_new_card.dart';
import 'package:belives_store_app_app/views/pages/payment_method/widgets/my_custom_dropdown_from_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PaymentMethodController());
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const MyCustomAppBar(
        title: MyCustomText(
          title: "PAYMENT METHOD",
          fSize: 18,
          fWeight: FontWeight.w500,
        ),
        icon: Icons.more_horiz,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.credit_card),
                  title: Obx(
                    () => CustomDropDownButtonFormField(
                      hText: "Selected Card*",
                      value: controller.selectedCard.value.isEmpty
                          ? null
                          : controller.selectedCard.value,
                      items: controller.card.map((String type) {
                        return DropdownMenuItem<String>(
                          value: type,
                          child: Text(type),
                        );
                      }).toList(),
                      onChanged: (value) {
                        controller.selectedCard.value = value!;
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const AddNewCardPage());
                      },
                      child: Container(
                        height: height * 0.16,
                        width: width * 0.15,
                        decoration: BoxDecoration(
                            // color: const Color(0xffF3F6F8),
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(25)),
                        child: const Icon(
                          Icons.add,
                          size: 35,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        height: height * .18,
                        width: width * .69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.black,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "**** 9000",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Text(
                                    "01 / 22",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Travel Card",
                                        style: TextStyle(
                                          color: Colors.grey[500],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        "&3,580.04",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                      "assets/pay_page_im/bank_icon.png")
                                ],
                              )
                            ],
                          ),
                        ))
                  ],
                ),
                const SizedBox(height: 10),
                const MyCustomDivider(),
                ListTile(
                  leading: Image.asset("assets/pay_page_im/paypal.png"),
                  title: const Text(
                    "PayPal",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  subtitle: const Text(
                    "shakibmohammad18@gmail.com",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  trailing: const Icon(
                    Icons.check_circle_outline_rounded,
                    size: 40,
                    color: Color(0xff02C697),
                  ),
                ),
                const MyCustomDivider(),
                const SizedBox(height: 10),
                ListTile(
                  leading: Image.asset("assets/pay_page_im/apple.png"),
                  title: const Text(
                    "Apple Pay",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  subtitle: const Text(
                    "**** 9000",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  trailing: const Icon(
                    Icons.check_circle_outline_rounded,
                    size: 40,
                  ),
                ),
                const MyCustomDivider(),
              ],
            ),
            MyCustomButton(
              title: "ORDER REVIEW",
              fWeight: FontWeight.w400,
              icon: Icons.arrow_right_alt,
              onTap: () {
                Get.to(() => const AddNewCardPage());
              },
            )
          ],
        ),
      ),
    );
  }
}
