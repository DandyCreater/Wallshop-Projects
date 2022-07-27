part of 'promo_spesial_bloc.dart';

abstract class PromoSpesialState extends Equatable {
  const PromoSpesialState();

  @override
  List<Object> get props => [];
}

class PromoSpesialInitial extends PromoSpesialState {}

class PromoSpesialLoading extends PromoSpesialState {}

class PromoSpesialSuccess extends PromoSpesialState {
  final OKContent menu;

  const PromoSpesialSuccess(this.menu);

  @override
  // TODO: implement props
  List<Object> get props => [menu];
}

class PromoSpesialError extends PromoSpesialState {
  final String message;

  const PromoSpesialError(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [message];
}
