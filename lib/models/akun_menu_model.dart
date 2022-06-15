class AkunMenuModel {
  final String imageUrl;
  final String title;

  AkunMenuModel({
    required this.imageUrl,
    required this.title,
  });
}

List<AkunMenuModel> listAkunMenu = [
  AkunMenuModel(
      imageUrl: "assets/icons/icon_notification.png", title: "Notifications"),
  AkunMenuModel(
      imageUrl: "assets/icons/icon_payment.png", title: "Payment Method"),
  AkunMenuModel(
      imageUrl: "assets/icons/icon_reward.png", title: "Reward credits"),
  AkunMenuModel(
      imageUrl: "assets/icons/icon_invite.png", title: "Invite Friends"),
  AkunMenuModel(imageUrl: "assets/icons/icon_track.png", title: "Track Order"),
  AkunMenuModel(
    imageUrl: "assets/icons/icon_order.png",
    title: "Order History",
  ),
  AkunMenuModel(imageUrl: "assets/icons/icon_about.png", title: "About Us"),
  AkunMenuModel(imageUrl: "assets/icons/icon_signout.png", title: "Sign Out"),
];
