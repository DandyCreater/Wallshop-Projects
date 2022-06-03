import 'product_model.dart';

class StoreModel {
  final String storeName;
  final int kiloMeter;
  final List<ProductModel> product;

  StoreModel({
    required this.storeName,
    required this.kiloMeter,
    required this.product,
  });
}

List<StoreModel> listOfStore = [
  StoreModel(
    storeName: 'Pixel Mart',
    kiloMeter: 5,
    product: [
      ProductModel(
        name: 'Tshirt Chicago Bulls',
        description: 'The best NBA team ever',
        price: 'Rp. 12.000',
        imageUrl: 'assets/images/tshirt.png',
      ),
      ProductModel(
        name: 'Nike Footsal Shoe',
        description: 'Very light and comfortable',
        price: 'Rp. 2,399.000',
        imageUrl: 'assets/images/shoes.png',
      ),
      ProductModel(
        name: 'Supreme Cash Gun',
        description: 'The best gun for cash',
        price: 'Rp. 1.122.000',
        imageUrl: 'assets/images/supreme.png',
      ),
    ],
  ),
  StoreModel(
    storeName: 'Samsan Bookstore',
    kiloMeter: 14,
    product: [
      ProductModel(
        name: 'Elon Musk Biography',
        description:
            'Starting from game developer to the #1 Richest man in the world',
        price: 'Rp. 312.000',
        imageUrl: 'assets/images/elon.png',
      ),
      ProductModel(
        name: 'Jack Ma',
        description: 'From English teacher to the Giant tech CEO',
        price: 'Rp. 399.000',
        imageUrl: 'assets/images/jackma.png',
      ),
      ProductModel(
        name: 'Public Speaking',
        description: 'Develop your communication skill now',
        price: 'Rp. 222.000',
        imageUrl: 'assets/images/public_speaking.png',
      ),
    ],
  ),
  StoreModel(
    storeName: 'Exotic Pet Store',
    kiloMeter: 3,
    product: [
      ProductModel(
        name: 'Spider Man',
        description: 'This cute creature is the best pet ever',
        price: 'Rp. 1.232.000',
        imageUrl: 'assets/images/exotic1.png',
      ),
      ProductModel(
        name: 'Venom',
        description: 'Very toxic and deadly, but still exotic',
        price: 'Rp. 4,399.000',
        imageUrl: 'assets/images/exotic2.png',
      ),
      ProductModel(
        name: 'Spider Girl',
        description: 'Cute exotic spider for pets',
        price: 'Rp. 5.122.000',
        imageUrl: 'assets/images/exotic3.png',
      ),
    ],
  ),
];
