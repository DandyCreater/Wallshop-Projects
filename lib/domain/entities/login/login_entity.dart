class LoginEntity {
  bool? success;
  DataLoginEntity? datas;

  LoginEntity({required this.success, required this.datas});
}

class DataLoginEntity {
  String? token;
  StoreEntity? store;

  DataLoginEntity({this.token, this.store});
}

class StoreEntity {
  int? id;
  String? name;
  String? slug;
  String? email;
  String? password;
  String? avatar;
  String? createdAt;
  String? updatedAt;

  StoreEntity(
      {required this.id,
      required this.name,
      required this.slug,
      required this.email,
      required this.password,
      required this.avatar,
      required this.createdAt,
      required this.updatedAt});
}
