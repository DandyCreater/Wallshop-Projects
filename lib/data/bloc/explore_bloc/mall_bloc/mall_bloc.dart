import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:slicing_homepage/domain/models/explore/mall/mall_model.dart';

part 'mall_event.dart';
part 'mall_state.dart';

class MallBloc extends Bloc<MallEvent, MallState> {
  MallBloc() : super(MallInitial()) {
    on<FetchMall>((event, emit) async {
      emit(MallLoading());

      final jsonData =
          await rootBundle.loadString('assets/json/mallExplore.json');
      final jsonDecodes = jsonDecode(jsonData);
      var data = OKContentMall.fromJson(jsonDecodes['OKContentMall']);

      if (jsonDecodes["ResponseCode"] == "OK") {
        emit(MallSuccess(data));
      } else {
        emit(const MallFailed("Fetch Data Error"));
      }
    });
  }
}
