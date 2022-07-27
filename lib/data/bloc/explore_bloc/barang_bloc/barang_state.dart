part of 'barang_bloc.dart';

abstract class BarangState extends Equatable {
  const BarangState();

  @override
  List<Object> get props => [];
}

class BarangInitial extends BarangState {}

class BarangLoading extends BarangState {}

class BarangSuccess extends BarangState {
  final OKContentBarang okContentBarang;

  const BarangSuccess(this.okContentBarang);

  @override
  // TODO: implement props
  List<Object> get props => [okContentBarang];
}

class BarangFailed extends BarangState {
  final String? message;

  const BarangFailed(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [message!];
}
