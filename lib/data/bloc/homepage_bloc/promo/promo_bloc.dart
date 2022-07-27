import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:slicing_homepage/domain/models/homepage/promo_homepage/promo_model.dart';

part 'promo_event.dart';
part 'promo_state.dart';

class PromoBloc extends Bloc<PromoEvent, PromoState> {
  PromoBloc() : super(PromoInitial()) {
    on<FetchPromo>((event, emit) async {
      emit(PromoLoading());

      final jsonData =
          await rootBundle.loadString('assets/json/promoDashboard.json');
      final jsonDecodes = jsonDecode(jsonData);
      var data = OKContentPromo.fromJson(jsonDecodes["OKContentPromo"]);

      if (jsonDecodes["ResponseCode"] == "OK") {
        emit(PromoSuccess(data));
      } else {
        emit(const PromoFailed("Fetch Data Promo Error"));
      }
    });
  }
}
