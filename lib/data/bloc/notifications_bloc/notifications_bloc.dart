import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:slicing_homepage/domain/models/notifications/notification_model.dart';

part 'notifications_event.dart';
part 'notifications_state.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc() : super(NotificationsInitial()) {
    on<FetchNotifications>((event, emit) async {
      emit(NotificationsLoading());

      final jsonData =
          await rootBundle.loadString('assets/json/notifications.json');
      final jsonDecodes = jsonDecode(jsonData);
      var data = OKContentResponse.fromJson(jsonDecodes["OKContentResponse"]);

      if (jsonDecodes["ResponseStatus"] == "OK") {
        emit(NotificationsSuccess(data));
      } else {
        emit(const NotificationsFailed("Fetch Notifications Error"));
      }
    });
  }
}
