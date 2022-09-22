import 'package:flutter/material.dart';
import 'package:slicing_homepage/app/app.dart';
import 'package:slicing_homepage/data/data_source/api_repository.dart';
import './data/utils/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init('https://backend-wallshop.herokuapp.com/api');
  runApp(const MyApp());
}
