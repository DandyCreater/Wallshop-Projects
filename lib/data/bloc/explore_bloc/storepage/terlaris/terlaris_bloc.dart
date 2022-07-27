import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:slicing_homepage/domain/models/homepage/item_rekomendasi/homepage_model.dart';
import 'package:slicing_homepage/domain/models/storepage/allproduct_store_model.dart';
import 'package:slicing_homepage/domain/models/storepage/populeritem_store_model.dart';

part 'terlaris_event.dart';
part 'terlaris_state.dart';

class TerlarisBloc extends Bloc<TerlarisEvent, TerlarisState> {
  TerlarisBloc() : super(TerlarisInitial()) {
    on<FetchTerlaris>((event, emit) async {
      emit(TerlarisLoading());
      final jsonData =
          await rootBundle.loadString('assets/json/populerItemStore.json');
      final jsonDecodes = jsonDecode(jsonData);
      var data = OKContentItemPopulerStore.fromJson(
          jsonDecodes['OKContentItemPopulerStore']);

      if (jsonDecodes['ResponseCode'] == "OK") {
        emit(TerlarisSuccess(data));
      } else {
        emit(const TerlarisFailed("Fetch Data Failed"));
      }
    });
  }
}
