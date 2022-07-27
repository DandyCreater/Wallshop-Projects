part of 'mengikuti_bloc.dart';

abstract class MengikutiState extends Equatable {
  const MengikutiState();

  @override
  List<Object> get props => [];
}

class MengikutiInitial extends MengikutiState {}

class MengikutiLoading extends MengikutiState {}

class MengikutiSuccess extends MengikutiState {
  final OKContentMengikuti mengikuti;

  const MengikutiSuccess(this.mengikuti);

  @override
  // TODO: implement props
  List<Object> get props => [mengikuti];
}

class MengikutiFailed extends MengikutiState {
  final String? message;

  const MengikutiFailed(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [message!];
}
