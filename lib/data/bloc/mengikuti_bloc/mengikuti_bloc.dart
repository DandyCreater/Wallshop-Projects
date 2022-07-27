import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:slicing_homepage/domain/models/mengikuti/mengikuti_model.dart';

part 'mengikuti_event.dart';
part 'mengikuti_state.dart';

class MengikutiBloc extends Bloc<MengikutiEvent, MengikutiState> {
  MengikutiBloc() : super(MengikutiInitial()) {
    on<FetchhMengikuti>((event, emit) async {
      emit(MengikutiLoading());

      final jsonData =
          await rootBundle.loadString('assets/json/mengikuti.json');
      final decodeData = jsonDecode(jsonData);
      var finalData =
          OKContentMengikuti.fromJson(decodeData['OKContentMengikuti']);

      if (decodeData != null) {
        emit(MengikutiSuccess(finalData));
      } else {
        emit(MengikutiFailed("Fetch Data Failed"));
      }
    });
  }
}
