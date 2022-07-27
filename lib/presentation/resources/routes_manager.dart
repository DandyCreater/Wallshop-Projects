import 'package:flutter/material.dart';
import 'package:slicing_homepage/presentation/pages/home/homepage.dart';
import 'package:slicing_homepage/presentation/pages/home/rank_homepage.screen.dart';
import 'package:slicing_homepage/presentation/pages/master_page.dart';
import 'package:slicing_homepage/presentation/pages/splash/splashscreen.dart';
import 'package:slicing_homepage/presentation/resources/strings_manager.dart';

class Routes {
  static const String splashRoute = '/';
  static const String masterRoute = '/master';
  static const String dashboardRoute = '/dashboard';
  static const String rankHomeScreenRoute = '/rank';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.masterRoute:
        return MaterialPageRoute(builder: (_) => const MasterPage());
      case Routes.dashboardRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routes.rankHomeScreenRoute:
        return MaterialPageRoute(builder: (_) => const RankHomeScreen());
      default:
        return UnDefinedRoute();
    }
  }

  static Route<dynamic> UnDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
            appBar: AppBar(title: const Text(AppStrings.noRouteFound)),
            body: const Center(
              child: Text(AppStrings.noRouteFound),
            )));
  }
}
