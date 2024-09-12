import 'package:belives_store_app_app/views/pages/my_account/my_account.dart';
import 'package:belives_store_app_app/views/pages/single_product_view/single_product_view.dart';
import 'package:belives_store_app_app/views/pages/user_profile/widget/my_user_profile_bottom_sheet.dart';
import 'package:get/get.dart';
import 'package:belives_store_app_app/data%20model/productof_list.dart';

class UserProfileController extends GetxController {
  var userName = 'SHAKIB'.obs;
  var userEmail = 'shakibmohammad18@gmail.com'.obs;
  var orderStatus = 'In Progress'.obs;
  var orderNumber = 'CS1020'.obs;

  List<ProductItem> products = productList;

  void navigateToProduct(int index) {
    Get.to(() => const SingleProductViewPage());
  }

  void navigateToAccountPage() {
    Get.to(() => const MyAccountPage());
  }

  void showTrackBottomSheet() {
    Get.bottomSheet(const MyUserProfileBottomSheet());
  }
}
