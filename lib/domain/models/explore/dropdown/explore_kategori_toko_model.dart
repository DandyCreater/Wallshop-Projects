class ExploreKategoriTokoModel {
  String? responseCode;
  OKContentKategoriToko? oKContentKategoriToko;
  String? failContent;

  ExploreKategoriTokoModel(
      {this.responseCode, this.oKContentKategoriToko, this.failContent});

  ExploreKategoriTokoModel.fromJson(Map<String, dynamic> json) {
    responseCode = json['ResponseCode'];
    oKContentKategoriToko = json['OKContentKategoriToko'] != null
        ? new OKContentKategoriToko.fromJson(json['OKContentKategoriToko'])
        : null;
    failContent = json['failContent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ResponseCode'] = this.responseCode;
    if (this.oKContentKategoriToko != null) {
      data['OKContentKategoriToko'] = this.oKContentKategoriToko!.toJson();
    }
    data['failContent'] = this.failContent;
    return data;
  }
}

class OKContentKategoriToko {
  List<ListItem>? listItem;

  OKContentKategoriToko({this.listItem});

  OKContentKategoriToko.fromJson(Map<String, dynamic> json) {
    if (json['listItem'] != null) {
      listItem = <ListItem>[];
      json['listItem'].forEach((v) {
        listItem!.add(new ListItem.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.listItem != null) {
      data['listItem'] = this.listItem!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ListItem {
  String? imageUrl;
  String? title;

  ListItem({this.imageUrl, this.title});

  ListItem.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = this.imageUrl;
    data['title'] = this.title;
    return data;
  }
}
