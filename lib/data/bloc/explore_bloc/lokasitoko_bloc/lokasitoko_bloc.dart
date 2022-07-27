import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:slicing_homepage/domain/models/explore/dropdown/explore_lokasi_toko_model.dart';

part 'lokasitoko_event.dart';
part 'lokasitoko_state.dart';

class LokasitokoBloc extends Bloc<LokasitokoEvent, LokasitokoState> {
  LokasitokoBloc() : super(LokasitokoInitial()) {
    on<FetchLokasiToko>((event, emit) async {
      emit(LokasitokoLoading());

      final jsonData =
          await rootBundle.loadString('assets/json/lokasiToko.json');
      final jsonDecodes = jsonDecode(jsonData);

      var data =
          OKContentLokasiToko.fromJson(jsonDecodes['OKContentLokasiToko']);

      if (jsonDecodes['ResponseCode'] == "OK") {
        emit(LokasitokoSuccess(data));
      } else {
        emit(const LokasitokoFailed("Fecth Data Failed"));
      }
    });
  }
}
