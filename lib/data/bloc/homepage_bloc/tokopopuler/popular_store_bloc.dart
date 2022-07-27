import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:slicing_homepage/domain/models/homepage/toko_populer/populer_model.dart';

part 'popular_store_event.dart';
part 'popular_store_state.dart';

class PopularStoreBloc extends Bloc<PopularStoreEvent, PopularStoreState> {
  PopularStoreBloc() : super(PopularStoreInitial()) {
    on<FetchStoreEvent>((event, emit) async {
      emit(PopularStoreLoading());

      var populerItemJson =
          await rootBundle.loadString('assets/json/popularStore.json');

      final itemDecode = jsonDecode(populerItemJson);
      var listData = OKContentPopuler.fromJson(itemDecode['OKContentPopuler']);

      if (itemDecode != null) {
        emit(PopularStoreSuccess(listData));
      } else {
        emit(PopularStoreFailed("Fecth Store Error"));
      }
    });
  }
}
