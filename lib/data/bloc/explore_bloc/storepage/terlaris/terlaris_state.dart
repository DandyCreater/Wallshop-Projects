part of 'terlaris_bloc.dart';

abstract class TerlarisState extends Equatable {
  const TerlarisState();

  @override
  List<Object> get props => [];
}

class TerlarisInitial extends TerlarisState {}

class TerlarisLoading extends TerlarisState {}

class TerlarisSuccess extends TerlarisState {
  final OKContentItemPopulerStore okContentItemPopulerStore;

  const TerlarisSuccess(this.okContentItemPopulerStore);

  @override
  // TODO: implement props
  List<Object> get props => [okContentItemPopulerStore];
}

class TerlarisFailed extends TerlarisState {
  final String? message;

  const TerlarisFailed(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [message!];
}
