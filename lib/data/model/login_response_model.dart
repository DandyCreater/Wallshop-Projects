// ignore_for_file: unnecessary_this

import 'package:slicing_homepage/data/model/model.dart';
import 'package:slicing_homepage/domain/entities/login/login_entity.dart';

class LoginResponseModel extends Model {
  bool? success;
  Data? datas;

  @override
  fromJson(Map<String, dynamic> data) {
    success = data['success'];
    datas = data['data'] != null ? new Data.fromJson(data['data']) : null;
  }

  LoginEntity toEntity() {
    return LoginEntity(
        success: this.success,
        datas: this.datas != null ? this.datas!.toEntity() : null);
  }
}

class Data {
  String? token;
  Store? store;

  Data({this.token, this.store});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    store = json['store'] != null ? new Store.fromJson(json['store']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    if (this.store != null) {
      data['store'] = this.store!.toJson();
    }
    return data;
  }

  DataLoginEntity toEntity() {
    return DataLoginEntity(
        token: this.token,
        store: this.store != null ? this.store!.toEntity() : null);
  }
}

class Store {
  int? id;
  String? name;
  String? slug;
  String? email;
  String? password;
  String? avatar;
  String? createdAt;
  String? updatedAt;

  Store(
      {this.id,
      this.name,
      this.slug,
      this.email,
      this.password,
      this.avatar,
      this.createdAt,
      this.updatedAt});

  Store.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    email = json['email'];
    password = json['password'];
    avatar = json['avatar'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['email'] = this.email;
    data['password'] = this.password;
    data['avatar'] = this.avatar;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }

  StoreEntity toEntity() {
    return StoreEntity(
        id: this.id,
        name: this.name,
        slug: this.slug,
        email: this.email,
        password: this.password,
        avatar: this.avatar,
        createdAt: this.createdAt,
        updatedAt: this.updatedAt);
  }
}

class LoginParameterPost {
  final String? email;
  final String? password;

  LoginParameterPost({
    required this.email,
    required this.password,
  });
}
