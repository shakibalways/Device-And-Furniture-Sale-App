import 'package:belives_store_app_app/utilits/constant/image_list.dart';
import 'package:belives_store_app_app/utilits/constant/text_list.dart';

class HeadPhoneProduct {
  final String imagePath;
  final String productName;
  final String rating;
  final String amount;

  HeadPhoneProduct({
    required this.imagePath,
    required this.productName,
    required this.rating,
    required this.amount,
  });
}

List<HeadPhoneProduct> headPhoneList = [
  HeadPhoneProduct(
    imagePath: RImages.wiresto,
    productName: RTexts.sss,
    rating: '5.0',
    amount: RTexts.sss2,
  ),
  HeadPhoneProduct(
    imagePath: RImages.rare,
    productName: RTexts.rare,
    rating: '4.2',
    amount: RTexts.rare2,
  ),
  HeadPhoneProduct(
    imagePath: RImages.havit,
    productName: RTexts.havit,
    rating: '4.8',
    amount: RTexts.havit2,
  ),
  HeadPhoneProduct(
    imagePath: RImages.awei,
    productName: RTexts.awei,
    rating: '4.6',
    amount: RTexts.awei2,
  ),
  HeadPhoneProduct(
    imagePath: RImages.headPhone,
    productName: RTexts.wireless,
    rating: '4.9',
    amount: RTexts.wireless2,
  ),
];
