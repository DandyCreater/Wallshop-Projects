part of 'allitem_bloc.dart';

abstract class AllitemState extends Equatable {
  const AllitemState();

  @override
  List<Object> get props => [];
}

class AllitemInitial extends AllitemState {}

class AllItemLoading extends AllitemState {}

class AllItemSuccess extends AllitemState {
  final OKContentAllProduct okContentAllProduct;

  const AllItemSuccess(this.okContentAllProduct);

  @override
  // TODO: implement props
  List<Object> get props => [okContentAllProduct];
}

class AllItemFailed extends AllitemState {
  final String? message;

  const AllItemFailed(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [message!];
}
