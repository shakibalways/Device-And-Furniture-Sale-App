// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_rx/get_rx.dart';
//
// class AddNewCardController extends GetxController {
//   GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   RxBool isLoading = false.obs;
//   String cardNumber = "";
//   String expiryDate = "";
//   String cardHolderName = "";
//   String cvvCode = "";
//   bool showBackView = false;
// }
import 'package:get/get.dart';

class AddNewCardController extends GetxController {
  // Observable variables for card details
  var cardNumber = ''.obs;
  var expiryDate = ''.obs;
  var cardHolderName = ''.obs;
  var cvvCode = ''.obs;
  var showBackView = false.obs;

  // Method to update card details
  void updateCardDetails({
    required String number,
    required String expiry,
    required String holderName,
    required String cvv,
  }) {
    cardNumber.value = number;
    expiryDate.value = expiry;
    cardHolderName.value = holderName;
    cvvCode.value = cvv;
  }

  void toggleCardView(bool isBackView) {
    showBackView.value = isBackView;
  }
}
