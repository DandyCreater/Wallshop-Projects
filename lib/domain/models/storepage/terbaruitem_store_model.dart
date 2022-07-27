class TerbaruItemStoreModel {
  String? responseCode;
  OKContentItemTerbaruStore? oKContentItemTerbaruStore;
  String? failContent;

  TerbaruItemStoreModel(
      {this.responseCode, this.oKContentItemTerbaruStore, this.failContent});

  TerbaruItemStoreModel.fromJson(Map<String, dynamic> json) {
    responseCode = json['ResponseCode'];
    oKContentItemTerbaruStore = json['OKContentItemTerbaruStore'] != null
        ? new OKContentItemTerbaruStore.fromJson(
            json['OKContentItemTerbaruStore'])
        : null;
    failContent = json['failContent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ResponseCode'] = this.responseCode;
    if (this.oKContentItemTerbaruStore != null) {
      data['OKContentItemTerbaruStore'] =
          this.oKContentItemTerbaruStore!.toJson();
    }
    data['failContent'] = this.failContent;
    return data;
  }
}

class OKContentItemTerbaruStore {
  List<Items>? items;

  OKContentItemTerbaruStore({this.items});

  OKContentItemTerbaruStore.fromJson(Map<String, dynamic> json) {
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
  String? price;
  String? discPrice;
  String? discon;

  Items({this.imageUrl, this.name, this.price, this.discPrice, this.discon});

  Items.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    name = json['name'];
    price = json['price'];
    discPrice = json['discPrice'];
    discon = json['discon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = this.imageUrl;
    data['name'] = this.name;
    data['price'] = this.price;
    data['discPrice'] = this.discPrice;
    data['discon'] = this.discon;
    return data;
  }
}
