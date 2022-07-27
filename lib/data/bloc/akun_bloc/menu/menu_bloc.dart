import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:slicing_homepage/domain/models/menu/akun_menu_model.dart';

part 'menu_event.dart';
part 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc() : super(MenuInitial()) {
    on<FetchMenu>((event, emit) async {
      emit(MenuLoading());
      final jsonData = await rootBundle.loadString('assets/json/menuAkun.json');
      final jsonDecodes = jsonDecode(jsonData);
      var data = OKContentMenu.fromJson(jsonDecodes["OKContentMenu"]);

      if (jsonDecodes["ResponseStatus"] == "OK") {
        emit(MenuSuccess(data));
      } else {
        emit(const MenuFailed("Fetch Menu Failed"));
      }
    });
  }
}
