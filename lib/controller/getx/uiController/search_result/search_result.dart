// import 'package:belives_store_app_app/controller/api/search_product.dart';
// import 'package:belives_store_app_app/data%20model/search_procut.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// class SearchResultController extends GetxController {
//   final TextEditingController searchController = TextEditingController();
//   RxList<Products> finalProduct = <Products>[].obs;
//   List<Products> product = <Products>[];
//   RxBool isLoading = false.obs;
//
//   getSearchResult() async {
//     isLoading.value = true;
//     var data = SearchProductService.searchProductService();
//     finalProduct.value = data ?? [];
//     product.addAll(finalProduct);
//     isLoading.value = false;
//   }
//
//   searchFunction({required String searchText}) {
//     product = finalProduct
//         .where((value) =>
//             value.itemName?.toLowerCase().toString() ==
//             searchText.toLowerCase())
//         .toList();
//   }
//
//   List myList = [];
//   void searchUser(String name) {
//     myList = finalProduct
//         .where((element) => element.itemName
//             .toString()
//             .toLowerCase()
//             .contains(name.toString().toLowerCase()))
//         .toList();
//   }
//
//   @override
//   void onInit() {
//     getSearchResult();
//     myList = finalProduct;
//     super.onInit();
//   }
// }

import 'package:belives_store_app_app/controller/api/search_product.dart';
import 'package:belives_store_app_app/data%20model/search_procut.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SearchResultController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  RxList<Products> finalProduct = <Products>[].obs;
  RxList<Products> searchResults = <Products>[].obs;

  // Loading indicator
  RxBool isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    getSearchResult(); // Fetch the products initially
  }

  getSearchResult() async {
    isLoading.value = true;
    var data = SearchProductService.searchProductService();
    if (data != null) {
      finalProduct.value = data;
      searchResults.value = data;
    }
    isLoading.value = false;
  }

  // Filters products based on search text
  void searchUser(String name) {
    if (name.isEmpty) {
      searchResults.value =
          finalProduct; // Reset to all products when search text is empty
    } else {
      searchResults.value = finalProduct
          .where((element) =>
              element.itemName?.toLowerCase().contains(name.toLowerCase()) ??
              true)
          .toList();
    }
  }

  // Clears the search input and resets the product list
  void clearSearch() {
    searchController.clear();
    searchResults.value = finalProduct;
  }
}
