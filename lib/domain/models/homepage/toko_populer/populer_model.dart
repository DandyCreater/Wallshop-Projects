class TokoPopulerModel {
  String? responseStatus;
  OKContentPopuler? oKContentPopuler;
  String? failContent;

  TokoPopulerModel(
      {this.responseStatus, this.oKContentPopuler, this.failContent});

  TokoPopulerModel.fromJson(Map<String, dynamic> json) {
    responseStatus = json['responseStatus'];
    oKContentPopuler = json['OKContentPopuler'] != null
        ? new OKContentPopuler.fromJson(json['OKContentPopuler'])
        : null;
    failContent = json['failContent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['responseStatus'] = this.responseStatus;
    if (this.oKContentPopuler != null) {
      data['OKContentPopuler'] = this.oKContentPopuler!.toJson();
    }
    data['failContent'] = this.failContent;
    return data;
  }
}

class OKContentPopuler {
  List<Item>? item;

  OKContentPopuler({this.item});

  OKContentPopuler.fromJson(Map<String, dynamic> json) {
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
  String? subtitle;

  Item({this.imageUrl, this.title, this.subtitle});

  Item.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    title = json['title'];
    subtitle = json['subtitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = this.imageUrl;
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    return data;
  }
}
