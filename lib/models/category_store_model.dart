class CategoryStoreModel {
  final String imageUrl;
  final String title;
  final String jumlah;

  CategoryStoreModel(
      {required this.imageUrl, required this.title, required this.jumlah});
}

List<CategoryStoreModel> kategoriStoreModel = [
  CategoryStoreModel(
      imageUrl: "assets/images/box.png", title: "Semua Produk", jumlah: "120"),
  CategoryStoreModel(
      imageUrl: "assets/images/supreme.png", title: "Kaos", jumlah: "60"),
  CategoryStoreModel(
      imageUrl: "assets/images/jersey.png", title: "Jersey", jumlah: "20"),
  CategoryStoreModel(
      imageUrl: "assets/images/shoes.png", title: "Sepatu", jumlah: "20"),
  CategoryStoreModel(
      imageUrl: "assets/images/elon.png", title: "Semua Produk", jumlah: "14"),
  CategoryStoreModel(
      imageUrl: "assets/images/supreme.png", title: "Kaos", jumlah: "15"),
  CategoryStoreModel(
      imageUrl: "assets/images/tshirt.png", title: "Jersey", jumlah: "14"),
  CategoryStoreModel(
      imageUrl: "assets/images/shoes.png", title: "Sepatu", jumlah: "20"),
];
