class CategoryModel {
  final String name;
  final String imageUrl;

  CategoryModel({
    required this.name,
    required this.imageUrl,
  });
}

List<CategoryModel> categories = [
  CategoryModel(name: 'Technology', imageUrl: 'assets/images/slider1_1.png'),
  CategoryModel(name: 'Business', imageUrl: 'assets/images/slider1_2.png'),
  CategoryModel(name: 'Technology', imageUrl: 'assets/images/slider1_1.png'),
  CategoryModel(name: 'Business', imageUrl: 'assets/images/slider1_2.png'),
];
