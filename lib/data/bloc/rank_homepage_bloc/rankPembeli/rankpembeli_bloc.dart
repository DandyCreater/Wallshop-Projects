import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:slicing_homepage/domain/models/homepage/rank_homepage/rank_homepage_model.dart';

part 'rankpembeli_event.dart';
part 'rankpembeli_state.dart';

class RankpembeliBloc extends Bloc<RankpembeliEvent, RankpembeliState> {
  RankpembeliBloc() : super(RankpembeliInitial()) {
    on<FetchRankPembeli>((event, emit) async {
      // TODO: implement event handler

      final dataJson =
          await rootBundle.loadString('assets/json/rankPembeli.json');
      final decodeData = jsonDecode(dataJson);
      var finalData = OKContentRank.fromJson(decodeData['OKContentRank']);

      if (decodeData != null) {
        emit(RankpembeliSuccess(finalData));
      } else {
        emit(const RankpembeliFailed("Fecth Data Error"));
      }
    });
  }
}
