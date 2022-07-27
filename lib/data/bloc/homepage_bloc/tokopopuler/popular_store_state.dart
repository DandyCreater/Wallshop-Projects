part of 'popular_store_bloc.dart';

abstract class PopularStoreState extends Equatable {
  const PopularStoreState();

  @override
  List<Object> get props => [];
}

class PopularStoreInitial extends PopularStoreState {}

class PopularStoreLoading extends PopularStoreState {}

class PopularStoreSuccess extends PopularStoreState {
  final OKContentPopuler store;

  const PopularStoreSuccess(this.store);

  @override
  // TODO: implement props
  List<Object> get props => [store];
}

class PopularStoreFailed extends PopularStoreState {
  final String message;

  const PopularStoreFailed(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [message];
}
