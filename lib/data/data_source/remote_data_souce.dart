import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:slicing_homepage/data/data_source/api_repository.dart';
import 'package:slicing_homepage/data/model/login_response_model.dart';
import 'package:slicing_homepage/data/model/register_response_model.dart';

abstract class RemoteDataSource {
  Future registerUser(RegisterParameterPost value);
  Future loginUser(LoginParameterPost value);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  ApiRepository service = ApiRepository();

  @override
  Future registerUser(RegisterParameterPost value) async {
    String method = 'register';
    String methodType = 'auth';

    print("Run Data Sources");
    try {
      var params = {
        "name": value.name,
        'email': value.email,
        'password': value.password
      };
      return service.request<RegisterResponseModel>(
          method: RequestMethods.post,
          methodJson: method,
          methodTypeJson: methodType,
          params: jsonEncode(params),
          model: RegisterResponseModel());
    } catch (e) {
      debugPrint(e.toString());
      return const AlertDialog();
    }
  }

  Future loginUser(LoginParameterPost value) async {
    String method = 'login';
    String methodType = 'auth';
    try {
      var params = {
        'email': value.email,
        "password": value.password,
      };
      return service.request(
          method: RequestMethods.post,
          methodJson: method,
          methodTypeJson: methodType,
          params: jsonEncode(params),
          model: LoginResponseModel());
    } catch (e) {
      debugPrint(e.toString());
      return const AlertDialog();
    }
  }
}
