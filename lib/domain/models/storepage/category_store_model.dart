// class CategoryStoreModel {
//   final String imageUrl;
//   final String title;
//   final String jumlah;

//   CategoryStoreModel(
//       {required this.imageUrl, required this.title, required this.jumlah});
// }

// List<CategoryStoreModel> kategoriStoreModel = [
//   CategoryStoreModel(
//       imageUrl: "assets/images/box.png", title: "Semua Produk", jumlah: "120"),
//   CategoryStoreModel(
//       imageUrl: "assets/images/supreme.png", title: "Kaos", jumlah: "60"),
//   CategoryStoreModel(
//       imageUrl: "assets/images/jersey.png", title: "Jersey", jumlah: "20"),
//   CategoryStoreModel(
//       imageUrl: "assets/images/shoes.png", title: "Sepatu", jumlah: "20"),
//   CategoryStoreModel(
//       imageUrl: "assets/images/elon.png", title: "Semua Produk", jumlah: "14"),
//   CategoryStoreModel(
//       imageUrl: "assets/images/supreme.png", title: "Kaos", jumlah: "15"),
//   CategoryStoreModel(
//       imageUrl: "assets/images/tshirt.png", title: "Jersey", jumlah: "14"),
//   CategoryStoreModel(
//       imageUrl: "assets/images/shoes.png", title: "Sepatu", jumlah: "20"),
// ];

class CategoryStoreModel {
  String? responseCode;
  OKContentCategoryStore? oKContentCategoryStore;
  String? failContent;

  CategoryStoreModel(
      {this.responseCode, this.oKContentCategoryStore, this.failContent});

  CategoryStoreModel.fromJson(Map<String, dynamic> json) {
    responseCode = json['ResponseCode'];
    oKContentCategoryStore = json['OKContentCategoryStore'] != null
        ? new OKContentCategoryStore.fromJson(json['OKContentCategoryStore'])
        : null;
    failContent = json['failContent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ResponseCode'] = this.responseCode;
    if (this.oKContentCategoryStore != null) {
      data['OKContentCategoryStore'] = this.oKContentCategoryStore!.toJson();
    }
    data['failContent'] = this.failContent;
    return data;
  }
}

class OKContentCategoryStore {
  List<Items>? items;

  OKContentCategoryStore({this.items});

  OKContentCategoryStore.fromJson(Map<String, dynamic> json) {
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
  String? title;
  String? jumlah;

  Items({this.imageUrl, this.title, this.jumlah});

  Items.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    title = json['title'];
    jumlah = json['jumlah'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = this.imageUrl;
    data['title'] = this.title;
    data['jumlah'] = this.jumlah;
    return data;
  }
}
