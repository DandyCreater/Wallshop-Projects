part of 'rankpembeli_bloc.dart';

abstract class RankpembeliState extends Equatable {
  const RankpembeliState();

  @override
  List<Object> get props => [];
}

class RankpembeliInitial extends RankpembeliState {}

class RankpembeliLoading extends RankpembeliState {}

class RankpembeliSuccess extends RankpembeliState {
  OKContentRank rankData;

  RankpembeliSuccess(this.rankData);

  @override
  // TODO: implement props
  List<Object> get props => [rankData];
}

class RankpembeliFailed extends RankpembeliState {
  final String? message;

  const RankpembeliFailed(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [message!];
}
