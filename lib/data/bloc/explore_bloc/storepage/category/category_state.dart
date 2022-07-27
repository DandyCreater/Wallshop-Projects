part of 'category_bloc.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object> get props => [];
}

class CategoryInitial extends CategoryState {}

class CategoryLoading extends CategoryState {}

class CategorySuccess extends CategoryState {
  final OKContentCategoryStore? okContentCategoryStore;

  const CategorySuccess(this.okContentCategoryStore);

  @override
  // TODO: implement props
  List<Object> get props => [okContentCategoryStore!];
}

class CategoryFailed extends CategoryState {
  final String? message;

  const CategoryFailed(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [message!];
}
