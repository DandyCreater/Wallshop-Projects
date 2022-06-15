class ProductStore {
  final String imageUrl;
  final String name;
  final int price;
  final int discPrice;
  final int discon;

  ProductStore(
      {required this.imageUrl,
      required this.name,
      required this.price,
      required this.discPrice,
      required this.discon});
}

//List Store Page
List<ProductStore> listProductTerlaris = [
  ProductStore(
      imageUrl: "assets/images/tshirt.png",
      name: "Tshirt Chicago Bulls",
      price: 79000,
      discPrice: 50000,
      discon: 29),
  ProductStore(
      imageUrl: "assets/images/shoes.png",
      name: "Nike Air Versitile II",
      price: 8000000,
      discPrice: 50000,
      discon: 29),
  ProductStore(
      imageUrl: "assets/images/supreme.png",
      name: "Supreme Cash Gun",
      price: 1150000,
      discPrice: 50000,
      discon: 29),
  ProductStore(
      imageUrl: "assets/images/elon.png",
      name: "Buku Elon Musk",
      price: 70000,
      discPrice: 50000,
      discon: 29)
];

List<ProductStore> listProductTerbaru = [
  ProductStore(
      imageUrl: "assets/images/supreme.png",
      name: "Supreme Cash Gun",
      price: 1150000,
      discPrice: 50000,
      discon: 29),
  ProductStore(
      imageUrl: "assets/images/shoes.png",
      name: "Nike Air Versitile II",
      price: 8000000,
      discPrice: 50000,
      discon: 29),
  ProductStore(
      imageUrl: "assets/images/tshirt.png",
      name: "Tshirt Chicago Bulls",
      price: 79000,
      discPrice: 50000,
      discon: 29),
  ProductStore(
      imageUrl: "assets/images/elon.png",
      name: "Buku Elon Musk",
      price: 70000,
      discPrice: 50000,
      discon: 29)
];

List<ProductStore> listProductLainnya = [
  ProductStore(
      imageUrl: "assets/images/supreme.png",
      name: "Supreme Cash Gun",
      price: 1150000,
      discPrice: 50000,
      discon: 29),
  ProductStore(
      imageUrl: "assets/images/shoes.png",
      name: "Nike Air Versitile II",
      price: 8000000,
      discPrice: 50000,
      discon: 29),
  ProductStore(
      imageUrl: "assets/images/tshirt.png",
      name: "Tshirt Chicago Bulls",
      price: 79000,
      discPrice: 50000,
      discon: 29),
  ProductStore(
      imageUrl: "assets/images/elon.png",
      name: "Buku Elon Musk",
      price: 70000,
      discPrice: 50000,
      discon: 29)
];

//List HomePage

List<ProductStore> listItemPopuler = [
  ProductStore(
      imageUrl: "assets/images/tshirt.png",
      name: "Tshirt Chicago Bulls",
      price: 79000,
      discPrice: 50000,
      discon: 29),
  ProductStore(
      imageUrl: "assets/images/shoes.png",
      name: "Nike Air Versitile II",
      price: 8000000,
      discPrice: 50000,
      discon: 29),
  ProductStore(
      imageUrl: "assets/images/supreme.png",
      name: "Supreme Cash Gun",
      price: 1150000,
      discPrice: 50000,
      discon: 29),
  ProductStore(
      imageUrl: "assets/images/elon.png",
      name: "Buku Elon Musk",
      price: 70000,
      discPrice: 50000,
      discon: 29)
];

List<ProductStore> listPromoSpesial = [
  ProductStore(
      imageUrl: "assets/images/elon.png",
      name: "Buku Elon Musk",
      price: 70000,
      discPrice: 50000,
      discon: 29),
  ProductStore(
      imageUrl: "assets/images/asusrog.png",
      name: "Asus ROG i7-8750H",
      price: 14070000,
      discPrice: 50000,
      discon: 29),
  ProductStore(
      imageUrl: "assets/images/bukustartup.png",
      name: "Buku startup",
      price: 70000,
      discPrice: 50000,
      discon: 29),
  ProductStore(
      imageUrl: "assets/images/bukustartup.png",
      name: "Buku startup",
      price: 70000,
      discPrice: 50000,
      discon: 29),
];

class SemuaProductModel {
  final String imageUrl;
  final String name;
  final String storeName;
  final int price;
  final double rating;
  final int views;
  final int sold;
  final Function() press;

  SemuaProductModel(
      {required this.imageUrl,
      required this.name,
      required this.price,
      required this.storeName,
      required this.rating,
      required this.views,
      required this.press,
      required this.sold});
}

List<SemuaProductModel> listSemuaProduct = [
  SemuaProductModel(
      imageUrl: 'assets/images/tshirt.png',
      name: "Kaos Tshirt\nChicago Bulls",
      storeName: "Gramedia Sam Ratulangi",
      price: 79000,
      rating: 4.8,
      views: 378,
      press: () {},
      sold: 473),
  SemuaProductModel(
      imageUrl: 'assets/images/shoes.png',
      name: "Sepatu Basket\nNike Air Versitile II",
      storeName: "Gramedia Sam Ratulangi",
      price: 8000000,
      rating: 4.8,
      views: 378,
      press: () {},
      sold: 473),
  SemuaProductModel(
      imageUrl: 'assets/images/asusrog.png',
      name: "Laptop Asus ROG\nCore i7 8750H",
      storeName: "Gramedia Sam Ratulangi",
      price: 14000000,
      rating: 4.8,
      views: 378,
      press: () {},
      sold: 473),
  SemuaProductModel(
      imageUrl: 'assets/images/supreme.png',
      name: "Supreme\nCash Gun",
      storeName: "Gramedia Sam Ratulangi",
      price: 1150000,
      rating: 4.8,
      views: 378,
      press: () {},
      sold: 473),
];
