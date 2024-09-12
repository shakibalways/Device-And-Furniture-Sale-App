import 'package:belives_store_app_app/utilits/constant/image_list.dart';
import 'package:belives_store_app_app/utilits/constant/text_list.dart';



class ViewAllProduct {
  final String imagePath;
  final String productName;
  final String rating;
  final String amount;
  ViewAllProduct({
    required this.imagePath,
    required this.productName,
    required this.rating,
    required this.amount,
  });
}

List<ViewAllProduct> viewAllProduct = [
  ViewAllProduct(
    imagePath: RImages.caligrafi,
    productName: RTexts.caligrafi,
    rating: '4.3',
    amount: RTexts.c1,
  ),
  ViewAllProduct(
    imagePath: RImages.skiniplayBeoplay,
    productName: RTexts.skin,
    rating: '4.9',
    amount: RTexts.skin1,
  ),
  ViewAllProduct(
    imagePath: RImages.beoPlayA9,
    productName: RTexts.beioplayA9,
    rating: '4.2',
    amount: RTexts.a91,
  ),
  ViewAllProduct(
    imagePath: RImages.wiresto,
    productName: RTexts.sss,
    rating: '5.0',
    amount: RTexts.sss2,
  ),
  ViewAllProduct(
    imagePath: RImages.rare,
    productName: RTexts.rare,
    rating: '4.2',
    amount: RTexts.rare2,
  ),
  ViewAllProduct(
    imagePath: RImages.coverBang,
    productName: RTexts.cover,
    rating: '5.0',
    amount: RTexts.cover1,
  ),
  ViewAllProduct(
    imagePath: RImages.bala,
    productName: RTexts.bala,
    rating: '4.8',
    amount: RTexts.bala3,
  ),
  ViewAllProduct(
    imagePath: RImages.functionality,
    productName: RTexts.fun,
    rating: '4.5',
    amount: RTexts.fun3,
  ),
  ViewAllProduct(
    imagePath: RImages.bO,
    productName: RTexts.bo,
    amount: RTexts.bo3,
    rating: '4.9',
  ),
  ViewAllProduct(
    imagePath: RImages.havit,
    productName: RTexts.havit,
    rating: '4.8',
    amount: RTexts.havit2,
  ),
  ViewAllProduct(
    imagePath: RImages.awei,
    productName: RTexts.awei,
    rating: '4.6',
    amount: RTexts.awei2,
  ),
  ViewAllProduct(
    imagePath: RImages.bangOlufsen,
    productName: RTexts.bang,
    rating: '4.3',
    amount: RTexts.bang1,
  ),
  ViewAllProduct(
    imagePath: RImages.headPhone,
    productName: RTexts.wireless,
    rating: '4.9',
    amount: RTexts.wireless2,
  ),
  ViewAllProduct(
    imagePath: RImages.beosoundwhite,
    productName: RTexts.white,
    rating: '4.6',
    amount: RTexts.white3,
  ),
];
