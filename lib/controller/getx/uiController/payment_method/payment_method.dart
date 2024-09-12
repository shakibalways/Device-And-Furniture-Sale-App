import 'package:get/get.dart';

class PaymentMethodController extends GetxController{
  var selectedCard = ''.obs;
  RxList<String> card = ['Credit Card', 'Devid Card','Master Card'].obs;
}