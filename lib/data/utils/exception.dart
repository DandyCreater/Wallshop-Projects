import 'package:dio/dio.dart';

class ServerException implements Exception {
  final DioError dioError;

  ServerException(this.dioError);
}
