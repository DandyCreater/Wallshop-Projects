class AllProductStoreModel {
  String? responseCode;
  OKContentAllProduct? oKContentAllProduct;

  AllProductStoreModel({this.responseCode, this.oKContentAllProduct});

  AllProductStoreModel.fromJson(Map<String, dynamic> json) {
    responseCode = json['ResponseCode'];
    oKContentAllProduct = json['OKContentAllProduct'] != null
        ? new OKContentAllProduct.fromJson(json['OKContentAllProduct'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ResponseCode'] = this.responseCode;
    if (this.oKContentAllProduct != null) {
      data['OKContentAllProduct'] = this.oKContentAllProduct!.toJson();
    }
    return data;
  }
}

class OKContentAllProduct {
  List<Items>? items;

  OKContentAllProduct({this.items});

  OKContentAllProduct.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? imageUrl;
  String? name;
  String? storeName;
  String? price;
  String? rating;
  String? views;
  String? press;
  String? sold;

  Items(
      {this.imageUrl,
      this.name,
      this.storeName,
      this.price,
      this.rating,
      this.views,
      this.press,
      this.sold});

  Items.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    name = json['name'];
    storeName = json['storeName'];
    price = json['price'];
    rating = json['rating'];
    views = json['views'];
    press = json['press'];
    sold = json['sold'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = this.imageUrl;
    data['name'] = this.name;
    data['storeName'] = this.storeName;
    data['price'] = this.price;
    data['rating'] = this.rating;
    data['views'] = this.views;
    data['press'] = this.press;
    data['sold'] = this.sold;
    return data;
  }
}
