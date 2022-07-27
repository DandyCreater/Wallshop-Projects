part of 'kategoritoko_bloc.dart';

abstract class KategoritokoState extends Equatable {
  const KategoritokoState();

  @override
  List<Object> get props => [];
}

class KategoritokoInitial extends KategoritokoState {}

class KategoritokoLoading extends KategoritokoState {}

class KategoritokoSuccess extends KategoritokoState {
  final OKContentKategoriToko okContentKategoriToko;

  const KategoritokoSuccess(this.okContentKategoriToko);

  @override
  // TODO: implement props
  List<Object> get props => [okContentKategoriToko];
}

class KategoritokoFailed extends KategoritokoState {
  final String? message;

  const KategoritokoFailed(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [message!];
}
