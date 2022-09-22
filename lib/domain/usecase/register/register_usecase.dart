import 'package:dartz/dartz.dart';
import 'package:slicing_homepage/data/model/register_response_model.dart';
import 'package:slicing_homepage/data/utils/failure.dart';
import 'package:slicing_homepage/domain/entities/register/register_entity.dart';
import 'package:slicing_homepage/domain/repository/domain_repository.dart';

class RegisterUseCase {
  final DomainRepository repository;

  RegisterUseCase(this.repository);

  Future<Either<Failure, RegisterEntity>> execute(RegisterParameterPost value) {
    return repository.register(value);
  }
}
