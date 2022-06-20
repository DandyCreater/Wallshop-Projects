class NotificationModel {
  String imageUrl;
  String iconUrl;
  String title;
  String timeinformation;
  String richtitle;
  String subrichtitle;
  String richsecondtitle;
  String lastrich;

  NotificationModel(
      {required this.imageUrl,
      required this.iconUrl,
      required this.title,
      required this.timeinformation,
      required this.lastrich,
      required this.richsecondtitle,
      required this.richtitle,
      required this.subrichtitle});
}

List<NotificationModel> ListofNotification = [
  NotificationModel(
      imageUrl: "assets/icons/icon_small_store.png",
      iconUrl: "assets/icons/icon_disc_notif.png",
      title: "",
      timeinformation: "2 jam yang lalu",
      lastrich: "yuk buruan cek sekarang!",
      richsecondtitle: "Pixel Store, ",
      richtitle: "",
      subrichtitle: "Ada diskon baru nih di "),
  NotificationModel(
      imageUrl: "assets/icons/icon_small_store.png",
      iconUrl: "assets/icons/icon_disc_notif.png",
      title: "",
      timeinformation: "8 jam yang lalu",
      lastrich: "yuk buruan cek sekarang!",
      richsecondtitle: "Pixel Store, ",
      richtitle: "",
      subrichtitle: "Ada diskon baru nih di "),
  NotificationModel(
      imageUrl: "assets/icons/icon_small_store.png",
      iconUrl: "assets/icons/icon_produk_notif.png",
      title: "Pixel Store",
      timeinformation: "Kemarin pukul 22.29",
      lastrich: "baru, yuk lihat sekarang!",
      richsecondtitle: "12 produk ",
      richtitle: "",
      subrichtitle: " baru saja mengupload "),
  NotificationModel(
      imageUrl: "assets/icons/icon_small_store.png",
      iconUrl: "assets/icons/icon_produk_notif.png",
      title: "Pixel Store ",
      timeinformation: "Kemarin pukul 22.29",
      lastrich: "baru, yuk lihat sekarang!",
      richsecondtitle: "12 produk ",
      richtitle: "",
      subrichtitle: "baru saja mengupload "),
  NotificationModel(
      imageUrl: "assets/icons/icon_small_store.png",
      iconUrl: "assets/icons/icon_follow_notif.png",
      title: "",
      timeinformation: "Kemarin pukul 13.10",
      lastrich: "",
      richsecondtitle: "Pixel Store",
      richtitle: "",
      subrichtitle: "Kamu baru saja mengikuti "),
];
