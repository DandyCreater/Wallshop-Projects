class PopulerItemStoreModel {
  String? responseCode;
  OKContentItemPopulerStore? oKContentItemPopulerStore;
  String? failContent;

  PopulerItemStoreModel(
      {this.responseCode, this.oKContentItemPopulerStore, this.failContent});

  PopulerItemStoreModel.fromJson(Map<String, dynamic> json) {
    responseCode = json['ResponseCode'];
    oKContentItemPopulerStore = json['OKContentItemPopulerStore'] != null
        ? new OKContentItemPopulerStore.fromJson(
            json['OKContentItemPopulerStore'])
        : null;
    failContent = json['failContent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ResponseCode'] = this.responseCode;
    if (this.oKContentItemPopulerStore != null) {
      data['OKContentItemPopulerStore'] =
          this.oKContentItemPopulerStore!.toJson();
    }
    data['failContent'] = this.failContent;
    return data;
  }
}

class OKContentItemPopulerStore {
  List<Items>? items;

  OKContentItemPopulerStore({this.items});

  OKContentItemPopulerStore.fromJson(Map<String, dynamic> json) {
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
