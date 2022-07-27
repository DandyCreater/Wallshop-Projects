part of 'ranktoko_bloc.dart';

abstract class RanktokoState extends Equatable {
  const RanktokoState();

  @override
  List<Object> get props => [];
}

class RanktokoInitial extends RanktokoState {}

class RanktokoLoading extends RanktokoState {}

class RanktokoSuccess extends RanktokoState {
  final OKContentRank? rankData;

  const RanktokoSuccess(this.rankData);

  @override
  // TODO: implement props
  List<Object> get props => [rankData!];
}

class RanktokoFailed extends RanktokoState {
  final String? message;

  const RanktokoFailed(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [message!];
}
