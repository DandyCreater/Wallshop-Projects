import 'package:dartz/dartz.dart';
import 'package:slicing_homepage/data/data_source/remote_data_souce.dart';
import 'package:slicing_homepage/data/model/login_response_model.dart';
import 'package:slicing_homepage/data/model/register_response_model.dart';
import 'package:slicing_homepage/data/utils/exception.dart';
import 'package:slicing_homepage/domain/entities/login/login_entity.dart';
import 'package:slicing_homepage/domain/entities/register/register_entity.dart';
import 'package:slicing_homepage/domain/repository/domain_repository.dart';

import '../utils/failure.dart';

class DataRepositoryIpml implements DomainRepository {
  final RemoteDataSource remoteDataSource;

  DataRepositoryIpml({required this.remoteDataSource});

  @override
  Future<Either<Failure, RegisterEntity>> register(
      RegisterParameterPost value) async {
    try {
      RegisterResponseModel response =
          await remoteDataSource.registerUser(value);
      if (response.success == true) {
        return right(response.toEntity());
      } else {
        return left(ServerFailure("Register Error"));
      }
    } on ServerException catch (e) {
      return left(ServerFailure(e.dioError.message));
    }
  }

  @override
  Future<Either<Failure, LoginEntity>> login(LoginParameterPost value) async {
    try {
      LoginResponseModel response = await remoteDataSource.loginUser(value);
      if (response.success == true) {
        return right(response.toEntity());
      } else {
        return left(ServerFailure("LoginError"));
      }
    } on ServerException catch (e) {
      return left(ServerFailure(e.dioError.message));
    }
  }
}
