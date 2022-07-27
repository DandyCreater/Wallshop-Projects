import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:slicing_homepage/domain/models/homepage/rank_homepage/rank_homepage_model.dart';

part 'ranktoko_event.dart';
part 'ranktoko_state.dart';

class RanktokoBloc extends Bloc<RanktokoEvent, RanktokoState> {
  RanktokoBloc() : super(RanktokoInitial()) {
    on<FetchRank>((event, emit) async {
      emit(RanktokoLoading());

      final dataJson = await rootBundle.loadString('assets/json/rankToko.json');
      var decodeData = jsonDecode(dataJson);
      var dataDecode = OKContentRank.fromJson(decodeData['OKContentRank']);

      if (decodeData != null) {
        emit(RanktokoSuccess(dataDecode));
      } else {
        emit(const RanktokoFailed("Fecth Data Error"));
      }
    });
  }
}
