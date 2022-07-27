class BarangExploreModel {
  String? responseCode;
  OKContentBarang? oKContentBarang;

  BarangExploreModel({this.responseCode, this.oKContentBarang});

  BarangExploreModel.fromJson(Map<String, dynamic> json) {
    responseCode = json['ResponseCode'];
    oKContentBarang = json['OKContentBarang'] != null
        ? new OKContentBarang.fromJson(json['OKContentBarang'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ResponseCode'] = this.responseCode;
    if (this.oKContentBarang != null) {
      data['OKContentBarang'] = this.oKContentBarang!.toJson();
    }
    return data;
  }
}

class OKContentBarang {
  List<Item>? item;

  OKContentBarang({this.item});

  OKContentBarang.fromJson(Map<String, dynamic> json) {
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
  String? title;
  String? price;
  String? sold;
  String? kota;
  String? distance;

  Item(
      {this.imageUrl,
      this.title,
      this.price,
      this.sold,
      this.kota,
      this.distance});

  Item.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    title = json['title'];
    price = json['price'];
    sold = json['sold'];
    kota = json['kota'];
    distance = json['distance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = this.imageUrl;
    data['title'] = this.title;
    data['price'] = this.price;
    data['sold'] = this.sold;
    data['kota'] = this.kota;
    data['distance'] = this.distance;
    return data;
  }
}
