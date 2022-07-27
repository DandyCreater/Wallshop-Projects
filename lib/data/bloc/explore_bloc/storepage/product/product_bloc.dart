import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:slicing_homepage/domain/models/storepage/kategori_product_store/products_store_model.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<FetchProducts>((event, emit) async {
      emit(ProductLoading());

      final jsonData =
          await rootBundle.loadString('assets/json/productCategoryStores.json');
      final jsonDecodes = jsonDecode(jsonData);
      var data = OKContentProductCategory.fromJson(
          jsonDecodes["OKContentProductCategory"]);

      if (jsonDecodes["responseStatus"] == "OK") {
        emit(ProductSuccess(data));
      } else {
        emit(const ProductFailed("Fetch Product Error"));
      }
    });
  }
}
