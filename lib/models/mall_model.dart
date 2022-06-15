class MallModel {
  String imageUrl;
  String name;
  String address;
  String information;

  MallModel(
      {required this.imageUrl,
      required this.name,
      required this.address,
      required this.information});
}

List<MallModel> MallModelList = [
  MallModel(
      imageUrl: "assets/images/megamall.png",
      name: "Megamall",
      address: "Shopping Mall. Jl Pierre Tendean Wenang selatan, kota Manado.",
      information: "Open"),
  MallModel(
      imageUrl: "assets/images/manadotown.png",
      name: "Manado Town Square",
      address: "Shopping Mall. Jl Pierre Tendean Wenang selatan, kota Manado.",
      information: "Open"),
  MallModel(
      imageUrl: "assets/images/itcenter.png",
      name: "IT Center",
      address: "Shopping Mall. Jl Pierre Tendean Wenang selatan, kota Manado.",
      information: "Open"),
  MallModel(
      imageUrl: "assets/images/megatrade.png",
      name: "Mega Trade Center",
      address: "Shopping Mall. Jl Pierre Tendean Wenang selatan, kota Manado.",
      information: "Open"),
  MallModel(
      imageUrl: "assets/images/lippoplaza.png",
      name: "Lippo Plaza Manado",
      address: "Shopping Mall. Jl Pierre Tendean Wenang selatan, kota Manado.",
      information: "Open"),
  MallModel(
      imageUrl: "assets/images/transmart.png",
      name: "Transmart Kairagi",
      address: "Shopping Mall. Jl Pierre Tendean Wenang selatan, kota Manado.",
      information: "Open"),
];
