part of 'register_bloc.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterSuccess extends RegisterState {
  final RegisterEntity? registerEntity;

  const RegisterSuccess({required this.registerEntity});

  @override
  // TODO: implement props
  List<Object> get props => [registerEntity!];
}

class RegisterFailed extends RegisterState {
  final String? message;

  const RegisterFailed({required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [message!];
}
