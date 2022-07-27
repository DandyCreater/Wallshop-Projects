class MengikutiModel {
  String? responseCode;
  OKContentMengikuti? oKContentMengikuti;
  String? failContent;

  MengikutiModel(
      {this.responseCode, this.oKContentMengikuti, this.failContent});

  MengikutiModel.fromJson(Map<String, dynamic> json) {
    responseCode = json['ResponseCode'];
    oKContentMengikuti = json['OKContentMengikuti'] != null
        ? new OKContentMengikuti.fromJson(json['OKContentMengikuti'])
        : null;
    failContent = json['failContent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ResponseCode'] = this.responseCode;
    if (this.oKContentMengikuti != null) {
      data['OKContentMengikuti'] = this.oKContentMengikuti!.toJson();
    }
    data['failContent'] = this.failContent;
    return data;
  }
}

class OKContentMengikuti {
  List<Item>? item;

  OKContentMengikuti({this.item});

  OKContentMengikuti.fromJson(Map<String, dynamic> json) {
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
  String? namaToko;
  String? kondisiProduk;
  String? imageUrlToko;
  String? imageUrl;
  String? komentar;
  String? likes;
  String? waktu;
  String? deskripsi;

  Item(
      {this.namaToko,
      this.kondisiProduk,
      this.imageUrlToko,
      this.imageUrl,
      this.komentar,
      this.likes,
      this.waktu,
      this.deskripsi});

  Item.fromJson(Map<String, dynamic> json) {
    namaToko = json['namaToko'];
    kondisiProduk = json['kondisiProduk'];
    imageUrlToko = json['imageUrlToko'];
    imageUrl = json['imageUrl'];
    komentar = json['komentar'];
    likes = json['likes'];
    waktu = json['waktu'];
    deskripsi = json['deskripsi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['namaToko'] = this.namaToko;
    data['kondisiProduk'] = this.kondisiProduk;
    data['imageUrlToko'] = this.imageUrlToko;
    data['imageUrl'] = this.imageUrl;
    data['komentar'] = this.komentar;
    data['likes'] = this.likes;
    data['waktu'] = this.waktu;
    data['deskripsi'] = this.deskripsi;
    return data;
  }
}



// class BarangModel {
//   String namaToko;
//   String kondisiProduk;
//   String imageUrlToko;
//   String imageUrl;
//   String deskripsi;
//   int likes;
//   int komentar;
//   int waktu;

//   BarangModel(
//       {required this.namaToko,
//       required this.kondisiProduk,
//       required this.imageUrlToko,
//       required this.imageUrl,
//       required this.deskripsi,
//       required this.komentar,
//       required this.likes,
//       required this.waktu});
// }

// List<BarangModel> barangModelList = [
//   BarangModel(
//       namaToko: "Inception Mart ",
//       kondisiProduk: "Produk baru",
//       imageUrlToko: "assets/icons/icon_shop.png",
//       imageUrl: "assets/images/robot_mobil.png",
//       komentar: 7,
//       likes: 259,
//       waktu: 2,
//       deskripsi: "Lorem ipsum dolor sit amet, consectetur"),
//   BarangModel(
//       namaToko: "Inception Mart ",
//       kondisiProduk: "Produk baru",
//       imageUrlToko: "assets/icons/icon_shop.png",
//       imageUrl: "assets/images/robot_merah.png",
//       komentar: 7,
//       likes: 259,
//       waktu: 2,
//       deskripsi: "Lorem ipsum dolor sit amet, consectetur"),
//   BarangModel(
//       namaToko: "Inception Mart ",
//       kondisiProduk: "Produk baru",
//       imageUrlToko: "assets/icons/icon_shop.png",
//       imageUrl: "assets/images/robot_biru.png",
//       komentar: 7,
//       likes: 259,
//       waktu: 2,
//       deskripsi: "Lorem ipsum dolor sit amet, consectetur"),
//   BarangModel(
//       namaToko: "Manado Pet Store ",
//       kondisiProduk: "Produk baru",
//       imageUrlToko: "assets/icons/icon_shop.png",
//       imageUrl: "assets/images/shark.png",
//       komentar: 7,
//       likes: 259,
//       waktu: 2,
//       deskripsi: "Lorem ipsum dolor sit amet, consectetur"),
//   BarangModel(
//       namaToko: "Manado Pet Store ",
//       kondisiProduk: "Produk baru",
//       imageUrlToko: "assets/icons/icon_shop.png",
//       imageUrl: "assets/images/bunglon.png",
//       komentar: 7,
//       likes: 259,
//       waktu: 2,
//       deskripsi: "Lorem ipsum dolor sit amet, consectetur"),
//   BarangModel(
//       namaToko: "Manado Pet Store ",
//       kondisiProduk: "Produk baru",
//       imageUrlToko: "assets/icons/icon_shop.png",
//       imageUrl: "assets/images/fish.png",
//       komentar: 7,
//       likes: 259,
//       waktu: 2,
//       deskripsi: "Lorem ipsum dolor sit amet, consectetur"),
// ];
