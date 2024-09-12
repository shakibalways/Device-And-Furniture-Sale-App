class SearchProductModel {
  List<Products>? products;

  SearchProductModel({this.products});

  SearchProductModel.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (products != null) {
      data['products'] = products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  String? image;
  String? itemName;
  String? itemPrice;

  Products({this.image, this.itemName, this.itemPrice});

  Products.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    itemName = json['itemName'];
    itemPrice = json['itemPrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['itemName'] = itemName;
    data['itemPrice'] = itemPrice;
    return data;
  }
}
