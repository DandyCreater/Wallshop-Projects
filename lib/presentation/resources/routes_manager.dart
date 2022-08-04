import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:slicing_homepage/presentation/pages/home/homepage.dart';
import 'package:slicing_homepage/presentation/pages/home/rank_homepage.screen.dart';
import 'package:slicing_homepage/presentation/pages/login/login_page.dart';
import 'package:slicing_homepage/presentation/pages/master_page.dart';
import 'package:slicing_homepage/presentation/pages/register/registrasi_page.dart';
import 'package:slicing_homepage/presentation/pages/splash/splashscreen.dart';
import 'package:slicing_homepage/presentation/resources/strings_manager.dart';

class Routes {
  static const String splashRoute = '/';
  static const String masterRoute = '/master';
  static const String dashboardRoute = '/dashboard';
  static const String rankHomeScreenRoute = '/rank';
  static const String loginScreenRoute = '/login';
  static const String registerScreenRoute = '/register';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.masterRoute:
        return PageTransition(
            child: const MasterPage(),
            type: PageTransitionType.fade,
            duration: const Duration(seconds: 1));
      case Routes.dashboardRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routes.rankHomeScreenRoute:
        return MaterialPageRoute(builder: (_) => const RankHomeScreen());
      case Routes.loginScreenRoute:
        return PageTransition(
            child: const LoginPage(),
            type: PageTransitionType.fade,
            duration: const Duration(seconds: 1));
      case Routes.registerScreenRoute:
        return PageTransition(
            child: const RegisterPage(),
            type: PageTransitionType.rightToLeft,
            duration: const Duration(seconds: 1));
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
