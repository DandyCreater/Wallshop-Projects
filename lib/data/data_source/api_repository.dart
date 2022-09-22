// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_declarations

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:slicing_homepage/data/model/model.dart';

enum RequestMethods { get, post, put, delete, patch }

class ApiRepository {
  Dio dio = Dio();

  Future<T> request<T extends Model>({
    RequestMethods method = RequestMethods.post,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
    required String methodJson,
    required String methodTypeJson,
    required dynamic params,
    required T model,
    bool showErrorSnackBar = true,
    void Function(Object error, Response response, String message)? onError,
  }) async {
    Response? response;
    final baseUrl = "https://backend-wallshop.herokuapp.com/api";

    headers = {
      'cache-control': 'no-cache',
      'User-Agent':
          'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:47.0) Gecko/20100101 Firefox/47.0',
    };

    String envelope = params;
    print("Param $envelope");
    debugPrint(baseUrl + "/v1/store/$methodTypeJson/$methodJson");
    try {
      switch (method) {
        case RequestMethods.post:
          print("request Method : $method");
          response =
              await dio.post(baseUrl + "/v1/store/$methodTypeJson/$methodJson",
                  data: envelope,
                  options: Options(
                    headers: headers,
                  ));
          break;
        case RequestMethods.get:
          response = await dio.get(
            baseUrl + "/v1/store/$methodTypeJson/$methodJson",
          );
          break;
        case RequestMethods.put:
          response = await dio.put(
            baseUrl + "/v1/store/$methodTypeJson/$methodJson",
          );
          break;
        case RequestMethods.delete:
          response = await dio.delete(
            baseUrl + "v1/store/$methodTypeJson/$methodJson",
          );
          break;
        case RequestMethods.patch:
          response = await dio.patch(
            baseUrl + "/v1/store/$methodTypeJson/$methodJson",
          );
          break;
      }
      final dataResponse = response.data;
      debugPrint(
          "######################## Isi Data Response Json ######################### \n $dataResponse");
      final responseJson = jsonEncode(dataResponse);

      debugPrint(
          "######################## Isi Final Response Json ######################### \n $responseJson");

      if (response.statusCode == 200 || response.statusCode == 201) {
        debugPrint("STATUS CODE ${response.statusCode}");
        model.fromJson(jsonDecode(responseJson));
      }
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout) {
        debugPrint(e.toString());
        debugPrint("Connection Time Out");
        onError!(e, response!, 'Pastikan Anda Terhubung dengan Internet');
      } else if (e.type == DioErrorType.other) {
        debugPrint(e.toString());
        debugPrint("Connection Time Out");
        onError!(e, response!, e.message);
      } else {
        debugPrint("Uknown Error: ${e.message}");
        onError!(e, response!, e.message);
      }
    }
    return model;
  }
}
