class RankHomepageModel {
  String? responseCode;
  OKContentRank? oKContent;
  String? failContent;

  RankHomepageModel({this.responseCode, this.oKContent, this.failContent});

  RankHomepageModel.fromJson(Map<String, dynamic> json) {
    responseCode = json['responseCode'];
    oKContent = json['OKContent'] != null
        ? new OKContentRank.fromJson(json['OKContent'])
        : null;
    failContent = json['failContent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['responseCode'] = this.responseCode;
    if (this.oKContent != null) {
      data['OKContent'] = this.oKContent!.toJson();
    }
    data['failContent'] = this.failContent;
    return data;
  }
}

class OKContentRank {
  List<Item>? item;

  OKContentRank({this.item});

  OKContentRank.fromJson(Map<String, dynamic> json) {
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
  String? num;
  String? imageUrl;
  String? title;
  String? price;

  Item({this.num, this.imageUrl, this.title, this.price});

  Item.fromJson(Map<String, dynamic> json) {
    num = json['num'];
    imageUrl = json['imageUrl'];
    title = json['title'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['num'] = this.num;
    data['imageUrl'] = this.imageUrl;
    data['title'] = this.title;
    data['price'] = this.price;
    return data;
  }
}



// class RankHomepageModel {
//   int num;
//   String imageUrl;
//   String title;
//   int price;

//   RankHomepageModel(
//       {required this.num,
//       required this.imageUrl,
//       required this.title,
//       required this.price});
// }

// List<RankHomepageModel> listofTokoRank = [
//   RankHomepageModel(
//       num: 1,
//       imageUrl: "assets/icons/icon_small_store.png",
//       title: "Pixel Store",
//       price: 0),
//   RankHomepageModel(
//       num: 2,
//       imageUrl: "assets/icons/icon_small_store.png",
//       title: "Bubble Mart",
//       price: 0),
//   RankHomepageModel(
//       num: 3,
//       imageUrl: "assets/icons/icon_small_store.png",
//       title: "Cherry Mart",
//       price: 0),
//   RankHomepageModel(
//       num: 4,
//       imageUrl: "assets/icons/icon_small_store.png",
//       title: "Omega Store",
//       price: 0),
//   RankHomepageModel(
//       num: 5,
//       imageUrl: "assets/icons/icon_small_store.png",
//       title: "Kawanua Merchandise",
//       price: 0),
//   RankHomepageModel(
//       num: 6,
//       imageUrl: "assets/icons/icon_small_store.png",
//       title: "Moon Pet Store",
//       price: 0),
//   RankHomepageModel(
//       num: 7,
//       imageUrl: "assets/icons/icon_small_store.png",
//       title: "Luna Store",
//       price: 0),
//   RankHomepageModel(
//       num: 8,
//       imageUrl: "assets/icons/icon_small_store.png",
//       title: "BomBom Merchandise",
//       price: 0),
//   RankHomepageModel(
//       num: 9,
//       imageUrl: "assets/icons/icon_small_store.png",
//       title: "Animal Kingdom",
//       price: 0),
//   RankHomepageModel(
//       num: 10,
//       imageUrl: "assets/icons/icon_small_store.png",
//       title: "Hugo Mart",
//       price: 0),
// ];

// List<RankHomepageModel> listofPembeliRank = [
//   RankHomepageModel(
//       num: 1,
//       imageUrl: "assets/images/seodalmi.png",
//       title: "Seo Dal Mi",
//       price: 0),
//   RankHomepageModel(
//       num: 2,
//       imageUrl: "assets/images/yoonseonhak.png",
//       title: "Yoon Seon Hak",
//       price: 0),
//   RankHomepageModel(
//       num: 3,
//       imageUrl: "assets/images/namdosan.png",
//       title: "Nam Do-San",
//       price: 0),
//   RankHomepageModel(
//       num: 4,
//       imageUrl: "assets/images/hanjipyeong.png",
//       title: "Han Ji-Pyeong",
//       price: 0),
//   RankHomepageModel(
//       num: 5,
//       imageUrl: "assets/images/woninjae.png",
//       title: "Won In Jae",
//       price: 0),
//   RankHomepageModel(
//       num: 6,
//       imageUrl: "assets/images/leecheolsan.png",
//       title: "Lee Cheol San",
//       price: 0),
//   RankHomepageModel(
//       num: 7,
//       imageUrl: "assets/images/kimyongsan.png",
//       title: "Kim Yong San",
//       price: 0),
//   RankHomepageModel(
//       num: 8,
//       imageUrl: "assets/images/jeongsaha.png",
//       title: "Jeong Sa Ha",
//       price: 0),
//   RankHomepageModel(
//       num: 9,
//       imageUrl: "assets/images/choiwondeok.png",
//       title: "Choi Won Deok",
//       price: 0),
//   RankHomepageModel(
//       num: 10,
//       imageUrl: "assets/images/chaahyeon.png",
//       title: "Cha A Hyeon",
//       price: 0),
// ];
