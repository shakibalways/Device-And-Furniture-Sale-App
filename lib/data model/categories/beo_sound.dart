import 'package:belives_store_app_app/utilits/constant/image_list.dart';
import 'package:belives_store_app_app/utilits/constant/text_list.dart';

class BeoSoundProduct {
  final String imagePath;
  final String productName;
  final String rating;
  final String amount;
  BeoSoundProduct({
    required this.imagePath,
    required this.productName,
    required this.rating,
    required this.amount,
  });
}

List<BeoSoundProduct> beoProductList = [
  BeoSoundProduct(
    imagePath: RImages.functionality,
    productName: RTexts.fun,
    rating: '4.5',
    amount: RTexts.fun3,
  ),
  BeoSoundProduct(
    imagePath: RImages.beosoundwhite,
    productName: RTexts.white,
    rating: '4.6',
    amount: RTexts.white3,
  ),
  BeoSoundProduct(
    imagePath: RImages.bala,
    productName: RTexts.bala,
    rating: '4.8',
    amount: RTexts.bala3,
  ),
  BeoSoundProduct(
    imagePath: RImages.bO,
    productName: RTexts.bo,
    amount: RTexts.bo3,
    rating: '4.9',
  ),
];
