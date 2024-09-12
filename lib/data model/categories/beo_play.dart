import 'package:belives_store_app_app/utilits/constant/image_list.dart';
import 'package:belives_store_app_app/utilits/constant/text_list.dart';

class BeoPlayProduct {
  final String imagePath;
  final String productName;
  final String rating;
  final String amount;

  BeoPlayProduct({
    required this.imagePath,
    required this.productName,
    required this.rating,
    required this.amount,
  });
}

List<BeoPlayProduct> productList1 = [
  BeoPlayProduct(
    imagePath: RImages.caligrafi,
    productName: RTexts.caligrafi,
    rating: '4.3',
    amount: RTexts.c1,
  ),
  BeoPlayProduct(
    imagePath: RImages.beoPlayA9,
    productName: RTexts.beioplayA9,
    rating: '4.2',
    amount: RTexts.a91,
  ),
  BeoPlayProduct(
    imagePath: RImages.bangOlufsen,
    productName: RTexts.bang,
    rating: '4.3',
    amount: RTexts.bang1,
  ),
  BeoPlayProduct(
    imagePath: RImages.skiniplayBeoplay,
    productName: RTexts.skin,
    rating: '4.9',
    amount: RTexts.skin1,
  ),
  BeoPlayProduct(
    imagePath: RImages.coverBang,
    productName: RTexts.cover,
    rating: '5.0',
    amount: RTexts.cover1,
  ),
];

//headphone
