// class NotificationModel {
//   String imageUrl;
//   String iconUrl;
//   String title;
//   String timeinformation;
//   String richtitle;
//   String subrichtitle;
//   String richsecondtitle;
//   String lastrich;

//   NotificationModel(
//       {required this.imageUrl,
//       required this.iconUrl,
//       required this.title,
//       required this.timeinformation,
//       required this.lastrich,
//       required this.richsecondtitle,
//       required this.richtitle,
//       required this.subrichtitle});
// }

// List<NotificationModel> ListofNotification = [
//   NotificationModel(
//       imageUrl: "assets/icons/icon_small_store.png",
//       iconUrl: "assets/icons/icon_disc_notif.png",
//       title: "",
//       timeinformation: "2 jam yang lalu",
//       lastrich: "yuk buruan cek sekarang!",
//       richsecondtitle: "Pixel Store, ",
//       richtitle: "",
//       subrichtitle: "Ada diskon baru nih di "),
//   NotificationModel(
//       imageUrl: "assets/icons/icon_small_store.png",
//       iconUrl: "assets/icons/icon_disc_notif.png",
//       title: "",
//       timeinformation: "8 jam yang lalu",
//       lastrich: "yuk buruan cek sekarang!",
//       richsecondtitle: "Pixel Store, ",
//       richtitle: "",
//       subrichtitle: "Ada diskon baru nih di "),
//   NotificationModel(
//       imageUrl: "assets/icons/icon_small_store.png",
//       iconUrl: "assets/icons/icon_produk_notif.png",
//       title: "Pixel Store",
//       timeinformation: "Kemarin pukul 22.29",
//       lastrich: "baru, yuk lihat sekarang!",
//       richsecondtitle: "12 produk ",
//       richtitle: "",
//       subrichtitle: " baru saja mengupload "),
//   NotificationModel(
//       imageUrl: "assets/icons/icon_small_store.png",
//       iconUrl: "assets/icons/icon_produk_notif.png",
//       title: "Pixel Store ",
//       timeinformation: "Kemarin pukul 22.29",
//       lastrich: "baru, yuk lihat sekarang!",
//       richsecondtitle: "12 produk ",
//       richtitle: "",
//       subrichtitle: "baru saja mengupload "),
//   NotificationModel(
//       imageUrl: "assets/icons/icon_small_store.png",
//       iconUrl: "assets/icons/icon_follow_notif.png",
//       title: "",
//       timeinformation: "Kemarin pukul 13.10",
//       lastrich: "",
//       richsecondtitle: "Pixel Store",
//       richtitle: "",
//       subrichtitle: "Kamu baru saja mengikuti "),
// ];

class NotificationsModel {
  String? responseStatus;
  OKContentResponse? oKContentResponse;
  String? failContent;

  NotificationsModel(
      {this.responseStatus, this.oKContentResponse, this.failContent});

  NotificationsModel.fromJson(Map<String, dynamic> json) {
    responseStatus = json['ResponseStatus'];
    oKContentResponse = json['OKContentResponse'] != null
        ? new OKContentResponse.fromJson(json['OKContentResponse'])
        : null;
    failContent = json['failContent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ResponseStatus'] = this.responseStatus;
    if (this.oKContentResponse != null) {
      data['OKContentResponse'] = this.oKContentResponse!.toJson();
    }
    data['failContent'] = this.failContent;
    return data;
  }
}

class OKContentResponse {
  List<Items>? items;

  OKContentResponse({this.items});

  OKContentResponse.fromJson(Map<String, dynamic> json) {
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
  String? iconUrl;
  String? title;
  String? timeinformation;
  String? lastrich;
  String? richsecondtitle;
  String? richtitle;
  String? subrichtitle;

  Items(
      {this.imageUrl,
      this.iconUrl,
      this.title,
      this.timeinformation,
      this.lastrich,
      this.richsecondtitle,
      this.richtitle,
      this.subrichtitle});

  Items.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    iconUrl = json['iconUrl'];
    title = json['title'];
    timeinformation = json['timeinformation'];
    lastrich = json['lastrich'];
    richsecondtitle = json['richsecondtitle'];
    richtitle = json['richtitle'];
    subrichtitle = json['subrichtitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = this.imageUrl;
    data['iconUrl'] = this.iconUrl;
    data['title'] = this.title;
    data['timeinformation'] = this.timeinformation;
    data['lastrich'] = this.lastrich;
    data['richsecondtitle'] = this.richsecondtitle;
    data['richtitle'] = this.richtitle;
    data['subrichtitle'] = this.subrichtitle;
    return data;
  }
}
