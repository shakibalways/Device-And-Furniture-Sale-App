import 'package:belives_store_app_app/data%20model/home_model/home_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var products = <Product>[].obs;
  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() {
    var productResult = [
      Product(
          imagePath: 'assets/home_image/beosound.png',
          text: 'Beosound 1',
          amount: '\$1,600'),
      Product(
          imagePath: 'assets/home_image/biolit.png',
          text: 'Beolit 17',
          amount: '\$550'),
    ];
    products.assignAll(productResult);
  }
}
