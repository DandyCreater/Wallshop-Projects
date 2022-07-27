part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductSuccess extends ProductState {
  final OKContentProductCategory? okContentProductCategory;

  const ProductSuccess(this.okContentProductCategory);

  @override
  // TODO: implement props
  List<Object> get props => [okContentProductCategory!];
}

class ProductFailed extends ProductState {
  final String? message;

  const ProductFailed(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [message!];
}
