part of 'rekomendasi_item_bloc.dart';

abstract class RekomendasiItemState extends Equatable {
  const RekomendasiItemState();

  @override
  List<Object> get props => [];
}

class RekomendasiItemInitial extends RekomendasiItemState {}

class RekomendasiItemLoading extends RekomendasiItemState {}

class RekomendasiItemSuccess extends RekomendasiItemState {
  final OKContent menu;

  const RekomendasiItemSuccess(this.menu);

  @override
  // TODO: implement props
  List<Object> get props => [menu];
}

class RekomendasiItemFailed extends RekomendasiItemState {
  final String message;

  const RekomendasiItemFailed(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [message];
}
