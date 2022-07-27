part of 'toko_bloc.dart';

abstract class TokoState extends Equatable {
  const TokoState();

  @override
  List<Object> get props => [];
}

class TokoInitial extends TokoState {}

class TokoLoading extends TokoState {}

class TokoSuccess extends TokoState {
  final OKContentToko okContentToko;
  // final StoreData storeData;

  const TokoSuccess(this.okContentToko, 
  // this.storeData
  
  );

  @override
  // TODO: implement props
  List<Object> get props => [okContentToko, 
  // storeData
  ];
}

class TokoFailed extends TokoState {
  final String? message;

  const TokoFailed(this.message);

  @override
  // TODO: implement props
  List<Object> get props => [message!];
}
