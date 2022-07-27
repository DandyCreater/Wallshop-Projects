part of 'lokasitoko_bloc.dart';

abstract class LokasitokoState extends Equatable {
  const LokasitokoState();

  @override
  List<Object> get props => [];
}

class LokasitokoInitial extends LokasitokoState {}

class LokasitokoLoading extends LokasitokoState {}

class LokasitokoSuccess extends LokasitokoState {
  final OKContentLokasiToko okContentLokasiToko;

  const LokasitokoSuccess(this.okContentLokasiToko);

  @override
  // TODO: implement props
  List<Object> get props => [okContentLokasiToko];
}

class LokasitokoFailed extends LokasitokoState {
  final String? message;

  const LokasitokoFailed(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [message!];
}
