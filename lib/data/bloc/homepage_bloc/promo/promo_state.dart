part of 'promo_bloc.dart';

abstract class PromoState extends Equatable {
  const PromoState();

  @override
  List<Object> get props => [];
}

class PromoInitial extends PromoState {}

class PromoLoading extends PromoState {}

class PromoSuccess extends PromoState {
  final OKContentPromo? okContentPromo;

  const PromoSuccess(this.okContentPromo);

  @override
  List<Object> get props => [okContentPromo!];
}

class PromoFailed extends PromoState {
  final String? message;

  const PromoFailed(this.message);

  @override
  List<Object> get props => [message!];
}
