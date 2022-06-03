class PopulerModel {
  final String imageUrl;
  final String title;
  final String price;
  final String discPrice;

  PopulerModel({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.discPrice,
  });
}

List<PopulerModel> popularList = [
  PopulerModel(
      imageUrl: 'imageUrl',
      title: 'title',
      price: 'price',
      discPrice: 'discPrice'),
  PopulerModel(
    imageUrl: 'assets/images/tshirt.png',
    title: 'Tshirt Chicago Bulls',
    price: 'Rp. 79.000',
    discPrice: 'Rp. 50.000',
  ),
  PopulerModel(
    imageUrl: 'assets/images/shoes.png',
    title: 'Nike Air Versetile II',
    price: 'Rp. 8.000.000',
    discPrice: 'Rp. 50.000',
  ),
  PopulerModel(
    imageUrl: 'assets/images/supreme.png',
    title: 'Supreme Cash Gun',
    price: 'Rp. 1.150.000',
    discPrice: 'Rp. 50.000',
  ),
  PopulerModel(
    imageUrl: 'assets/images/elon.png',
    title: 'Elon Mask Biography Book',
    price: 'Rp. 200.000',
    discPrice: 'Rp. 50.000',
  ),
];
