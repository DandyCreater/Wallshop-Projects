import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slicing_homepage/pages/home/homepage.dart';
import 'package:slicing_homepage/pages/home/rank_homepage.screen.dart';
import 'package:slicing_homepage/splashscreen.dart';
import 'pages/master_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      // home: MasterPage(),
      routes: {
        '/': (context) => SplashScreen(),
        '/master': (context) => MasterPage(),
        '/dashboard': (context) => HomePage(),
        '/rank': (context) => RankHomeScreen()
      },
    );
  }
}
