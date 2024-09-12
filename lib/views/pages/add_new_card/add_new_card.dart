import 'package:belives_store_app_app/components/my_custom_appbar.dart';
import 'package:belives_store_app_app/components/my_custom_button.dart';
import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:belives_store_app_app/controller/getx/uiController/add_new_card/add_new_card.dart';
import 'package:belives_store_app_app/views/pages/order_review/order_review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:get/get.dart';

class AddNewCardPage extends StatelessWidget {
  const AddNewCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddNewCardController());
    return Scaffold(
      appBar: const MyCustomAppBar(
        title: MyCustomText(
          title: "Add New Card",
          fSize: 22,
          fWeight: FontWeight.w500,
        ),
        icon: Icons.camera_alt_outlined,
      ),
      body: Column(
        children: [
          // credit card
          Obx(
            () => CreditCardWidget(
              cardNumber: controller.cardNumber.value,
              expiryDate: controller.expiryDate.value,
              cardHolderName: controller.cardHolderName.value,
              cvvCode: controller.cvvCode.value,
              showBackView: controller.showBackView.value,
              onCreditCardWidgetChange: (p0) {},
            ),
          ),

          // credit card form
          Expanded(
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CreditCardForm(
                        cardNumber: controller.cardNumber.value,
                        expiryDate: controller.expiryDate.value,
                        cardHolderName: controller.cardHolderName.value,
                        cvvCode: controller.cvvCode.value,
                        onCreditCardModelChange: (data) {
                          controller.updateCardDetails(
                            number: data.cardNumber,
                            expiry: data.expiryDate,
                            holderName: data.cardHolderName,
                            cvv: data.cvvCode,
                          );
                        },
                        formKey: GlobalKey<FormState>(),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      MyCustomButton(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        title: "Pay Now",
                        onTap: () {
                          // Navigate to the order review page
                          Get.to(() => const OrderReviewPage());
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
