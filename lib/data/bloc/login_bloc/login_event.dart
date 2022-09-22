part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class FetchLogin extends LoginEvent {
  final LoginParameterPost? value;

  const FetchLogin({required this.value});

  @override
  // TODO: implement props
  List<Object> get props => [value!];
}
