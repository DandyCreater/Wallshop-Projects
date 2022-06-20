class BarangModel {
  String namaToko;
  String kondisiProduk;
  String imageUrlToko;
  String imageUrl;
  String deskripsi;
  int likes;
  int komentar;
  int waktu;

  BarangModel(
      {required this.namaToko,
      required this.kondisiProduk,
      required this.imageUrlToko,
      required this.imageUrl,
      required this.deskripsi,
      required this.komentar,
      required this.likes,
      required this.waktu});
}

List<BarangModel> barangModelList = [
  BarangModel(
      namaToko: "Inception Mart",
      kondisiProduk: "Produk baru",
      imageUrlToko: "assets/icons/icon_shop.png",
      imageUrl: "assets/images/robot_mobil.png",
      komentar: 7,
      likes: 259,
      waktu: 2,
      deskripsi: "Lorem ipsum dolor sit amet, consectetur"),
  BarangModel(
      namaToko: "Inception Mart",
      kondisiProduk: "Produk baru",
      imageUrlToko: "assets/icons/icon_shop.png",
      imageUrl: "assets/images/robot_merah.png",
      komentar: 7,
      likes: 259,
      waktu: 2,
      deskripsi: "Lorem ipsum dolor sit amet, consectetur"),
  BarangModel(
      namaToko: "Inception Mart",
      kondisiProduk: "Produk baru",
      imageUrlToko: "assets/icons/icon_shop.png",
      imageUrl: "assets/images/robot_biru.png",
      komentar: 7,
      likes: 259,
      waktu: 2,
      deskripsi: "Lorem ipsum dolor sit amet, consectetur"),
  BarangModel(
      namaToko: "Manado Pet Store",
      kondisiProduk: "Produk baru",
      imageUrlToko: "assets/icons/icon_shop.png",
      imageUrl: "assets/images/shark.png",
      komentar: 7,
      likes: 259,
      waktu: 2,
      deskripsi: "Lorem ipsum dolor sit amet, consectetur"),
  BarangModel(
      namaToko: "Manado Pet Store",
      kondisiProduk: "Produk baru",
      imageUrlToko: "assets/icons/icon_shop.png",
      imageUrl: "assets/images/bunglon.png",
      komentar: 7,
      likes: 259,
      waktu: 2,
      deskripsi: "Lorem ipsum dolor sit amet, consectetur"),
  BarangModel(
      namaToko: "Manado Pet Store",
      kondisiProduk: "Produk baru",
      imageUrlToko: "assets/icons/icon_shop.png",
      imageUrl: "assets/images/fish.png",
      komentar: 7,
      likes: 259,
      waktu: 2,
      deskripsi: "Lorem ipsum dolor sit amet, consectetur"),
];
