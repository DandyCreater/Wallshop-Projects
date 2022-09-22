import 'package:dartz/dartz.dart';
import 'package:slicing_homepage/data/model/login_response_model.dart';
import 'package:slicing_homepage/data/model/register_response_model.dart';
import 'package:slicing_homepage/data/utils/failure.dart';
import 'package:slicing_homepage/domain/entities/login/login_entity.dart';
import 'package:slicing_homepage/domain/entities/register/register_entity.dart';

abstract class DomainRepository {
  Future<Either<Failure, RegisterEntity>> register(RegisterParameterPost value);
  Future<Either<Failure, LoginEntity>> login(LoginParameterPost value);
}
