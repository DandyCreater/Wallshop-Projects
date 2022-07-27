part of 'terbaru_bloc.dart';

abstract class TerbaruState extends Equatable {
  const TerbaruState();

  @override
  List<Object> get props => [];
}

class TerbaruInitial extends TerbaruState {}

class TerbaruLoading extends TerbaruState {}

class TerbaruSuccess extends TerbaruState {
  final OKContentItemTerbaruStore okContentItemTerbaruStore;

  const TerbaruSuccess(this.okContentItemTerbaruStore);
  @override
  // TODO: implement props
  List<Object> get props => [okContentItemTerbaruStore];
}

class TerbaruFailed extends TerbaruState {
  final String? message;

  const TerbaruFailed(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [message!];
}
