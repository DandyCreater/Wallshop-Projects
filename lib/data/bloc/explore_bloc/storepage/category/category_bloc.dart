import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:slicing_homepage/domain/models/storepage/category_store_model.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryInitial()) {
    on<FetchCategory>((event, emit) async {
      emit(CategoryLoading());

      final jsonData =
          await rootBundle.loadString('assets/json/categoryStore.json');
      final jsonDecodes = jsonDecode(jsonData);
      var data = OKContentCategoryStore.fromJson(
          jsonDecodes["OKContentCategoryStore"]);

      if (jsonDecodes["ResponseCode"] == "OK") {
        emit(CategorySuccess(data));
      } else {
        emit(const CategoryFailed("Fetch Category Data Error"));
      }
    });
  }
}
