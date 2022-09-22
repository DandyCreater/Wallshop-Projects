import 'package:dartz/dartz.dart';
import 'package:slicing_homepage/data/model/login_response_model.dart';
import 'package:slicing_homepage/data/utils/failure.dart';
import 'package:slicing_homepage/domain/entities/login/login_entity.dart';
import 'package:slicing_homepage/domain/repository/domain_repository.dart';

class LoginUseCase {
  final DomainRepository repository;

  LoginUseCase(this.repository);

  Future<Either<Failure, LoginEntity>> execute(LoginParameterPost value) {
    return repository.login(value);
  }
}
