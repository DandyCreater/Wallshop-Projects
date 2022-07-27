part of 'notifications_bloc.dart';

abstract class NotificationsState extends Equatable {
  const NotificationsState();

  @override
  List<Object> get props => [];
}

class NotificationsInitial extends NotificationsState {}

class NotificationsLoading extends NotificationsState {}

class NotificationsSuccess extends NotificationsState {
  final OKContentResponse? okContentResponse;

  const NotificationsSuccess(this.okContentResponse);

  @override
  List<Object> get props => [okContentResponse!];
}

class NotificationsFailed extends NotificationsState {
  final String? message;

  const NotificationsFailed(this.message);

  @override
  List<Object> get props => [message!];
}
