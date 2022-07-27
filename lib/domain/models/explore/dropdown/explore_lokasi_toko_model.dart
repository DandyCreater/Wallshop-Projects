class ExploreLokasiTokoModel {
  String? responseCode;
  OKContentLokasiToko? oKContentLokasiToko;
  String? failContent;

  ExploreLokasiTokoModel(
      {this.responseCode, this.oKContentLokasiToko, this.failContent});

  ExploreLokasiTokoModel.fromJson(Map<String, dynamic> json) {
    responseCode = json['ResponseCode'];
    oKContentLokasiToko = json['OKContentLokasiToko'] != null
        ? new OKContentLokasiToko.fromJson(json['OKContentLokasiToko'])
        : null;
    failContent = json['failContent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ResponseCode'] = this.responseCode;
    if (this.oKContentLokasiToko != null) {
      data['OKContentLokasiToko'] = this.oKContentLokasiToko!.toJson();
    }
    data['failContent'] = this.failContent;
    return data;
  }
}

class OKContentLokasiToko {
  List<ListItem>? listItem;

  OKContentLokasiToko({this.listItem});

  OKContentLokasiToko.fromJson(Map<String, dynamic> json) {
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
