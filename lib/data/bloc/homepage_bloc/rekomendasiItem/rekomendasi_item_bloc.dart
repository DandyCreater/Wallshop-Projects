import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:slicing_homepage/domain/models/homepage/item_rekomendasi/homepage_model.dart';

part 'rekomendasi_item_event.dart';
part 'rekomendasi_item_state.dart';

class RekomendasiItemBloc
    extends Bloc<RekomendasiItemEvent, RekomendasiItemState> {
  RekomendasiItemBloc() : super(RekomendasiItemInitial()) {
    on<FetchRekomendasiMenu>((event, emit) async {
      emit(RekomendasiItemLoading());

      var populerItemJson =
          await rootBundle.loadString('assets/json/rekomendasiItem.json');

      final itemDecode = jsonDecode(populerItemJson);
      var listData = OKContent.fromJson(itemDecode['OKContent']);

      if (itemDecode != null) {
        emit(RekomendasiItemSuccess(listData));
      } else {
        emit(const RekomendasiItemFailed("Fetch Data Error"));
      }
    });
  }
}
