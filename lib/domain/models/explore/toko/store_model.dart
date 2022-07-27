class TokoExploreModel {
  String? responseCode;
  OKContentToko? oKContentToko;
  String? failContent;

  TokoExploreModel({this.responseCode, this.oKContentToko, this.failContent});

  TokoExploreModel.fromJson(Map<String, dynamic> json) {
    responseCode = json['ResponseCode'];
    oKContentToko = json['OKContentToko'] != null
        ? new OKContentToko.fromJson(json['OKContentToko'])
        : null;
    failContent = json['failContent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ResponseCode'] = this.responseCode;
    if (this.oKContentToko != null) {
      data['OKContentToko'] = this.oKContentToko!.toJson();
    }
    data['failContent'] = this.failContent;
    return data;
  }
}

class OKContentToko {
  List<StoreData>? storeData;

  OKContentToko({this.storeData});

  OKContentToko.fromJson(Map<String, dynamic> json) {
    if (json['storeData'] != null) {
      storeData = <StoreData>[];
      json['storeData'].forEach((v) {
        storeData!.add(new StoreData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.storeData != null) {
      data['storeData'] = this.storeData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StoreData {
  String? storeName;
  String? kiloMeter;
  List<Product>? product;
  String? jarak;

  StoreData({this.storeName, this.kiloMeter, this.product, this.jarak});

  StoreData.fromJson(Map<String, dynamic> json) {
    storeName = json['storeName'];
    kiloMeter = json['kiloMeter'];
    if (json['product'] != null) {
      product = <Product>[];
      json['product'].forEach((v) {
        product!.add(new Product.fromJson(v));
      });
    }
    jarak = json['jarak'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['storeName'] = this.storeName;
    data['kiloMeter'] = this.kiloMeter;
    if (this.product != null) {
      data['product'] = this.product!.map((v) => v.toJson()).toList();
    }
    data['jarak'] = this.jarak;
    return data;
  }
}

class Product {
  String? name;
  String? description;
  String? price;
  String? imageUrl;

  Product({this.name, this.description, this.price, this.imageUrl});

  Product.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    price = json['price'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['imageUrl'] = this.imageUrl;
    return data;
  }
}
