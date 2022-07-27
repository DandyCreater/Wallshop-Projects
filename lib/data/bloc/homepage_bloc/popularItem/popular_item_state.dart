part of 'popular_item_bloc.dart';

abstract class PopularItemState extends Equatable {
  const PopularItemState();

  @override
  List<Object> get props => [];
}

class PopularItemInitial extends PopularItemState {}

class PopularItemLoading extends PopularItemState {}

class PopularItemSuccess extends PopularItemState {
  final OKContent menu;

  const PopularItemSuccess({required this.menu});

  @override
  // TODO: implement props
  List<Object> get props => [menu];
}

class PopularItemFailed extends PopularItemState {
  final String message;

  const PopularItemFailed(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [message];
}
