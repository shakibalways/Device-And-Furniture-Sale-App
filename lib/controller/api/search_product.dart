import 'dart:convert';
import 'package:belives_store_app_app/data%20model/search_procut.dart';
import 'package:belives_store_app_app/database/search_result.dart';

class SearchProductService {
  static List<Products>? searchProductService() {
    try {
      SearchProductModel searchProductModel = SearchProductModel.fromJson(
          jsonDecode(jsonEncode(SearchResultList.searchResult)));
      return searchProductModel.products;
    } catch (e) {
      e.toString();
    }
    return null;
  }
}
