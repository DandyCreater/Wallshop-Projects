import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:slicing_homepage/domain/models/explore/barang/barang_model.dart';

part 'barang_event.dart';
part 'barang_state.dart';

class BarangBloc extends Bloc<BarangEvent, BarangState> {
  BarangBloc() : super(BarangInitial()) {
    on<FetchBarang>((event, emit) async {
      emit(BarangLoading());

      final jsonData =
          await rootBundle.loadString('assets/json/barangExplore.json');
      final jsonDecodes = jsonDecode(jsonData);
      var data = OKContentBarang.fromJson(jsonDecodes['OKContentBarang']);

      if (jsonDecodes['ResponseCode'] == "OK") {
        emit(BarangSuccess(data));
      } else {
        emit(const BarangFailed("Fetch Barang Failed"));
      }
    });
  }
}
