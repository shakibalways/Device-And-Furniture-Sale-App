import 'package:belives_store_app_app/utilits/constant/image_list.dart';
import 'package:belives_store_app_app/utilits/constant/text_list.dart';

class OrderReviews {
  final String imagePath;
  final String text;
  OrderReviews({
    required this.text,
    required this.imagePath,
  });
}

List<OrderReviews> placeOrder = [
  OrderReviews(imagePath: RImages.beosound, text: RTexts.b),
  OrderReviews(imagePath: RImages.headphone, text: RTexts.c),
  OrderReviews(imagePath: RImages.heads, text: RTexts.d),
  OrderReviews(imagePath: RImages.be, text: RTexts.e),
];
