part of 'mall_bloc.dart';

abstract class MallState extends Equatable {
  const MallState();

  @override
  List<Object> get props => [];
}

class MallInitial extends MallState {}

class MallLoading extends MallState {}

class MallSuccess extends MallState {
  final OKContentMall okContentMall;

  const MallSuccess(this.okContentMall);

  @override
  // TODO: implement props
  List<Object> get props => [okContentMall];
}

class MallFailed extends MallState {
  final String? message;

  const MallFailed(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [message!];
}
