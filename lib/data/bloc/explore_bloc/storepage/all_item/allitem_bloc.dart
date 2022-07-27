import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:slicing_homepage/domain/models/storepage/allproduct_store_model.dart';

part 'allitem_event.dart';
part 'allitem_state.dart';

class AllitemBloc extends Bloc<AllitemEvent, AllitemState> {
  AllitemBloc() : super(AllitemInitial()) {
    on<FetchAllItem>((event, emit) async {
      emit(AllItemLoading());
      final jsonData =
          await rootBundle.loadString('assets/json/allproductStore.json');

      final jsonDecodes = jsonDecode(jsonData);
      var data =
          OKContentAllProduct.fromJson(jsonDecodes['OKContentAllProduct']);

      if (jsonDecodes['ResponseCode'] == "OK") {
        emit(AllItemSuccess(data));
      } else {
        emit(const AllItemFailed("Fetch Data Failed"));
      }
    });
  }
}
