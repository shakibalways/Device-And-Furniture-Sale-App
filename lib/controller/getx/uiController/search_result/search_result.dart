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
    getSearchResult();
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
