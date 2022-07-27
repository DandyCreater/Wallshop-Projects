import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:slicing_homepage/domain/models/explore/toko/store_model.dart';

part 'toko_event.dart';
part 'toko_state.dart';

class TokoBloc extends Bloc<TokoEvent, TokoState> {
  TokoBloc() : super(TokoInitial()) {
    on<FetchToko>((event, emit) async {
      emit(TokoLoading());

      final jsonData =
          await rootBundle.loadString('assets/json/tokoExplore.json');
      final jsonDecodes = jsonDecode(jsonData);
      var data = OKContentToko.fromJson(jsonDecodes["OKContentToko"]);

      if (jsonDecodes["ResponseCode"] == "OK") {
        emit(TokoSuccess(data));
      } else {
        const TokoFailed("Fetch Data Error");
      }
    });
  }
}
