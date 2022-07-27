import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:slicing_homepage/domain/models/explore/dropdown/explore_kategori_toko_model.dart';

part 'kategoritoko_event.dart';
part 'kategoritoko_state.dart';

class KategoritokoBloc extends Bloc<KategoritokoEvent, KategoritokoState> {
  KategoritokoBloc() : super(KategoritokoInitial()) {
    on<FetchKategoriToko>((event, emit) async {
      emit(KategoritokoLoading());

      final jsonData =
          await rootBundle.loadString('assets/json/kategoriToko.json');
      final jsonDecodes = jsonDecode(jsonData);
      var data =
          OKContentKategoriToko.fromJson(jsonDecodes["OKContentKategoriToko"]);

      if (jsonDecodes['ResponseCode'] == "OK") {
        emit(KategoritokoSuccess(data));
      } else {
        emit(const KategoritokoFailed("Fetch Data Failed"));
      }
    });
  }
}
