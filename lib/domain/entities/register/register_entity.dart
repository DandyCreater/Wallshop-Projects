class RegisterEntity {
  bool? success;
  DataEntity? data;

  RegisterEntity({required this.success, required this.data});
}

class DataEntity {
  int? id;
  String? name;
  String? email;
  String? slug;
  String? password;
  String? avatar;
  String? updatedAt;
  String? createdAt;

  DataEntity(
      {required this.id,
      required this.name,
      required this.email,
      required this.slug,
      required this.password,
      required this.avatar,
      required this.updatedAt,
      required this.createdAt});

  DataEntity.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    slug = json['slug'];
    password = json['password'];
    avatar = json['avatar'];
    updatedAt = json['updatedAt'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['slug'] = this.slug;
    data['password'] = this.password;
    data['avatar'] = this.avatar;
    data['updatedAt'] = this.updatedAt;
    data['createdAt'] = this.createdAt;
    return data;
  }
}
