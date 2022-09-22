import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:slicing_homepage/data/model/login_response_model.dart';
import 'package:slicing_homepage/domain/entities/login/login_entity.dart';
import 'package:slicing_homepage/domain/usecase/login/login_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;
  LoginBloc(this.loginUseCase) : super(LoginInitial()) {
    on<FetchLogin>((event, emit) async {
      emit(LoginLoading());
      try {
        final result = await loginUseCase.execute(event.value!);
        result.fold((failure) {
          emit(LoginFailed(message: failure.toString()));
        }, (response) {
          emit(LoginSuccess(response));
        });
      } catch (e) {
        emit(LoginFailed(message: "LOGIN BLOC ERROR $e"));
      }
    });
  }
}
