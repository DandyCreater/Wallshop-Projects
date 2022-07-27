class HomePageModel {
  String? responseStatus;
  OKContent? oKContent;
  String? failContent;

  HomePageModel({this.responseStatus, this.oKContent, this.failContent});

  HomePageModel.fromJson(Map<String, dynamic> json) {
    responseStatus = json['responseStatus'];
    oKContent = json['OKContent'] != null
        ? new OKContent.fromJson(json['OKContent'])
        : null;
    failContent = json['failContent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['responseStatus'] = this.responseStatus;
    if (this.oKContent != null) {
      data['OKContent'] = this.oKContent!.toJson();
    }
    data['failContent'] = this.failContent;
    return data;
  }
}

class OKContent {
  List<Item>? item;

  OKContent({this.item});

  OKContent.fromJson(Map<String, dynamic> json) {
    if (json['item'] != null) {
      item = <Item>[];
      json['item'].forEach((v) {
        item!.add(new Item.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.item != null) {
      data['item'] = this.item!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Item {
  String? imageUrl;
  String? name;
  String? price;
  String? discPrice;
  String? discon;
  String? city;

  Item(
      {this.imageUrl,
      this.name,
      this.price,
      this.discPrice,
      this.discon,
      this.city});

  Item.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    name = json['name'];
    price = json['price'];
    discPrice = json['discPrice'];
    discon = json['discon'];
    city = json['city'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = this.imageUrl;
    data['name'] = this.name;
    data['price'] = this.price;
    data['discPrice'] = this.discPrice;
    data['discon'] = this.discon;
    data['city'] = this.city;
    return data;
  }
}
