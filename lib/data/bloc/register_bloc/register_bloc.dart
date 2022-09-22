import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:slicing_homepage/data/model/register_response_model.dart';
import 'package:slicing_homepage/domain/entities/register/register_entity.dart';
import 'package:slicing_homepage/domain/usecase/register/register_usecase.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterUseCase registerUseCase;
  RegisterBloc(this.registerUseCase) : super(RegisterInitial()) {
    on<FetchRegister>((event, emit) async {
      emit(RegisterLoading());
      try {
        print("RUN BLOC");
        final result = await registerUseCase.execute(event.value!);
        print(result);
        result.fold((failure) {
          emit(RegisterFailed(message: failure.message));
        }, (response) {
          emit(RegisterSuccess(registerEntity: response));
        });
      } catch (e) {
        emit(RegisterFailed(message: "Register BLOC ERROR : $e"));
      }
    });
  }
}
