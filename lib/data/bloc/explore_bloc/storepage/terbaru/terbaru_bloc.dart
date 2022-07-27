import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:slicing_homepage/domain/models/storepage/populeritem_store_model.dart';
import 'package:slicing_homepage/domain/models/storepage/terbaruitem_store_model.dart';

part 'terbaru_event.dart';
part 'terbaru_state.dart';

class TerbaruBloc extends Bloc<TerbaruEvent, TerbaruState> {
  TerbaruBloc() : super(TerbaruInitial()) {
    on<FetchTerbaru>((event, emit) async {
      emit(TerbaruLoading());
      final jsonData =
          await rootBundle.loadString('assets/json/terbaruItemStore.json');
      final jsonDecodes = jsonDecode(jsonData);
      var data = OKContentItemTerbaruStore.fromJson(
          jsonDecodes['OKContentItemTerbaruStore']);

      if (jsonDecodes['ResponseCode'] == 'OK') {
        emit(TerbaruSuccess(data));
      } else {
        emit(const TerbaruFailed("Fetch Data Error"));
      }
    });
  }
}
