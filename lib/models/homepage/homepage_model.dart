class HomePageItem {
  String imageUrl;
  String name;
  int price;
  int discPrice;
  int discon;
  String city;

  HomePageItem(
      {required this.imageUrl,
      required this.name,
      required this.price,
      required this.discPrice,
      required this.discon,
      required this.city});
}

List<HomePageItem> listItemPopuler = [
  HomePageItem(
      imageUrl: "assets/images/fixed_shirt.png",
      name: "Original Tshirt Chicago Bulls NBA Series",
      price: 79000,
      discPrice: 100000,
      discon: 29,
      city: 'Kota Manado'),
  HomePageItem(
      imageUrl: "assets/images/fixed_shoes.png",
      name: "Nike Air Versitile II",
      price: 8000000,
      discPrice: 10320000,
      discon: 29,
      city: 'Kota Manado'),
  HomePageItem(
      imageUrl: "assets/images/white_car_robot_product.png",
      name: "Original Vector Robot Tipe Cozmo by Anki",
      price: 5999000,
      discPrice: 7740000,
      discon: 29,
      city: 'Kota Manado'),
  HomePageItem(
      imageUrl: "assets/images/fixed_red_robot.png",
      name: "Supreme Cash Gun",
      price: 12999000,
      discPrice: 16768000,
      discon: 29,
      city: 'Kota Manado')
];

List<HomePageItem> listPromoSpesial = [
  HomePageItem(
      imageUrl: "assets/images/motor.png",
      name: "All New CBR 250R ABS Red Limited Edition",
      price: 57900000,
      discPrice: 63000000,
      discon: 8,
      city: 'Kota Manado'),
  HomePageItem(
      imageUrl: "assets/images/shark.png",
      name: "Hiu Dwarf Blacktip Size 20cm",
      price: 750000,
      discPrice: 1000000,
      discon: 35,
      city: 'Kota Manado'),
  HomePageItem(
      imageUrl: "assets/images/spider.png",
      name: "Mexican redleg tarantula female size 9cm",
      price: 799000,
      discPrice: 1100000,
      discon: 29,
      city: 'Kota Manado'),
  HomePageItem(
      imageUrl: "assets/images/red_robot_product.png",
      name: "Supreme Cash Gun",
      price: 12999000,
      discPrice: 16768000,
      discon: 29,
      city: 'Kota Manado'),
];
