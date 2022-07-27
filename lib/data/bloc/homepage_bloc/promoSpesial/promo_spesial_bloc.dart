import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:slicing_homepage/domain/models/homepage/item_rekomendasi/homepage_model.dart';

part 'promo_spesial_event.dart';
part 'promo_spesial_state.dart';

class PromoSpesialBloc extends Bloc<PromoSpesialEvent, PromoSpesialState> {
  PromoSpesialBloc() : super(PromoSpesialInitial()) {
    on<FetchSpesialItem>((event, emit) async {
      emit(PromoSpesialLoading());

      var populerItemJson =
          await rootBundle.loadString('assets/json/spesialPromo.json');

      final itemDecode = jsonDecode(populerItemJson);
      var listData = OKContent.fromJson(itemDecode['OKContent']);

      if (itemDecode != null) {
        emit(PromoSpesialSuccess(listData));
      } else {
        emit(PromoSpesialError("Data error"));
      }
    });
  }
}
