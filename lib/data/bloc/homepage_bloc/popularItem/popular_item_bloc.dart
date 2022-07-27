import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:slicing_homepage/domain/models/homepage/item_rekomendasi/homepage_model.dart';

part 'popular_item_event.dart';
part 'popular_item_state.dart';

class PopularItemBloc extends Bloc<PopularItemEvent, PopularItemState> {
  PopularItemBloc() : super(PopularItemInitial()) {
    on<FetchPopularItem>((event, emit) async {
      emit(PopularItemLoading());

      var populerItemJson =
          await rootBundle.loadString('assets/json/populerItem.json');

      final itemDecode = jsonDecode(populerItemJson);
      var listData = OKContent.fromJson(itemDecode['OKContent']);

      if (itemDecode != null) {
        emit(PopularItemSuccess(menu: listData));
      } else {
        emit(const PopularItemFailed("Error Data"));
      }
    });
  }
}
