class MallExploreModel {
  String? responseCode;
  OKContentMall? oKContentMall;
  String? failContent;

  MallExploreModel({this.responseCode, this.oKContentMall, this.failContent});

  MallExploreModel.fromJson(Map<String, dynamic> json) {
    responseCode = json['ResponseCode'];
    oKContentMall = json['OKContentMall'] != null
        ? new OKContentMall.fromJson(json['OKContentMall'])
        : null;
    failContent = json['failContent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ResponseCode'] = this.responseCode;
    if (this.oKContentMall != null) {
      data['OKContentMall'] = this.oKContentMall!.toJson();
    }
    data['failContent'] = this.failContent;
    return data;
  }
}

class OKContentMall {
  List<Items>? items;

  OKContentMall({this.items});

  OKContentMall.fromJson(Map<String, dynamic> json) {
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
  String? address;
  String? information;

  Items({this.imageUrl, this.name, this.address, this.information});

  Items.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    name = json['name'];
    address = json['address'];
    information = json['information'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = this.imageUrl;
    data['name'] = this.name;
    data['address'] = this.address;
    data['information'] = this.information;
    return data;
  }
}
