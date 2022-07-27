class PromoModel {
  String? responseCode;
  OKContentPromo? oKContentPromo;

  PromoModel({this.responseCode, this.oKContentPromo});

  PromoModel.fromJson(Map<String, dynamic> json) {
    responseCode = json['ResponseCode'];
    oKContentPromo = json['OKContentPromo'] != null
        ? new OKContentPromo.fromJson(json['OKContentPromo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ResponseCode'] = this.responseCode;
    if (this.oKContentPromo != null) {
      data['OKContentPromo'] = this.oKContentPromo!.toJson();
    }
    return data;
  }
}

class OKContentPromo {
  List<Items>? items;

  OKContentPromo({this.items});

  OKContentPromo.fromJson(Map<String, dynamic> json) {
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
  String? name;
  String? imageUrl;

  Items({this.name, this.imageUrl});

  Items.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['imageUrl'] = this.imageUrl;
    return data;
  }
}
