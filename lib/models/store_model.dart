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
    storeName: 'Inception Mart',
    kiloMeter: 3,
    product: [
      ProductModel(
        name: '',
        description: '',
        price: 'Rp. 5.999.000',
        imageUrl: 'assets/images/white_car_robot_product.png',
      ),
      ProductModel(
        name: '',
        description: '',
        price: 'Rp. 12.999.000',
        imageUrl: 'assets/images/red_robot_product.png',
      ),
      ProductModel(
        name: '',
        description: '',
        price: 'Rp. 5.499.000',
        imageUrl: 'assets/images/black_car_robot_product.png',
      ),
    ],
  ),
  StoreModel(
    storeName: 'Exotic Pet Store',
    kiloMeter: 4,
    product: [
      ProductModel(
        name: '',
        description: '',
        price: 'Rp. 199.000',
        imageUrl: 'assets/images/exotic1.png',
      ),
      ProductModel(
        name: '',
        description: '',
        price: 'Rp. 279.000',
        imageUrl: 'assets/images/hand_spider.png',
      ),
      ProductModel(
        name: '',
        description: '',
        price: 'Rp. 379.000',
        imageUrl: 'assets/images/exotic3.png',
      ),
    ],
  ),
  StoreModel(
    storeName: 'Samsan Bookstore',
    kiloMeter: 5,
    product: [
      ProductModel(
        name: '',
        description: '',
        price: 'Rp. 67.000',
        imageUrl: 'assets/images/elon.png',
      ),
      ProductModel(
        name: '',
        description: '',
        price: 'Rp. 47.000',
        imageUrl: 'assets/images/jackma.png',
      ),
      ProductModel(
        name: '',
        description: '',
        price: 'Rp. 57.000',
        imageUrl: 'assets/images/public_speaking.png',
      ),
    ],
  ),
  StoreModel(
    storeName: 'Manado Fish Store',
    kiloMeter: 9,
    product: [
      ProductModel(
        name: '',
        description: '',
        price: 'Rp. 167.000',
        imageUrl: 'assets/images/orange_fish.png',
      ),
      ProductModel(
        name: '',
        description: '',
        price: 'Rp. 147.000',
        imageUrl: 'assets/images/yellow_fish.png',
      ),
      ProductModel(
        name: '',
        description: '',
        price: 'Rp. 157.000',
        imageUrl: 'assets/images/purple_fish.png',
      ),
    ],
  ),
];
