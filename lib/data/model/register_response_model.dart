// ignore_for_file: must_be_immutable, unnecessary_this

import 'package:equatable/equatable.dart';
import 'package:slicing_homepage/data/model/model.dart';
import 'package:slicing_homepage/domain/entities/register/register_entity.dart';

class RegisterResponseModel extends Model {
  bool? success;
  Data? datas;

  @override
  fromJson(Map<String, dynamic> data) {
    success = data['success'];
    datas = data['data'] == '' ? null : Data.fromJson(data['data']);
  }

  RegisterEntity toEntity() {
    return RegisterEntity(
        data: this.datas != null ? this.datas!.toEntity() : null,
        success: this.success);
  }
}

class Data extends Equatable {
  int? id;
  String? name;
  String? email;
  String? slug;
  String? password;
  String? avatar;
  String? updatedAt;
  String? createdAt;

  Data(
      {this.id,
      this.name,
      this.email,
      this.slug,
      this.password,
      this.avatar,
      this.updatedAt,
      this.createdAt});

  Data.fromJson(Map<String, dynamic> json) {
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

  DataEntity toEntity() {
    return DataEntity(
        id: this.id,
        name: this.name,
        email: this.email,
        slug: this.slug,
        password: this.password,
        avatar: this.avatar,
        updatedAt: this.updatedAt,
        createdAt: this.createdAt);
  }

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, name, email, slug, password, avatar, updatedAt, createdAt];
}

class RegisterParameterPost {
  final String? name;
  final String? email;
  final String? password;

  RegisterParameterPost({
    required this.name,
    required this.email,
    required this.password,
  });
}
