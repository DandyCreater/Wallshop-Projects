// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  String message;

  Failure(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}

class ServerFailure extends Failure {
  ServerFailure(String message) : super(message);
}

class ResponseFailure extends Failure {
  ResponseFailure(String message) : super(message);
}
