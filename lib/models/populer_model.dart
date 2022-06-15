class TokoPopulerModel {
  String imageUrl;
  String title;
  String Subtitle;

  TokoPopulerModel(this.imageUrl, this.title, this.Subtitle);
}

List<TokoPopulerModel> tokoPopulerList = [
  TokoPopulerModel("assets/images/manado.png", 'Manado Exotic Island', 'Pets'),
  TokoPopulerModel("assets/images/miens.png", 'Miends Souvenir', 'Souvenir'),
  TokoPopulerModel(
      "assets/images/maskut.png", 'Maskut Sport', 'Peralatan Olahraga'),
  TokoPopulerModel("assets/images/manado.png", 'Manado Exotic Island', 'Pets'),
];
