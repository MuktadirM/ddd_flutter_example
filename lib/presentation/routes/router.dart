import 'package:ddd_flutter_example/presentation/pages/auth/login_page/login_page.dart';
import 'package:ddd_flutter_example/presentation/pages/auth/register_page/register_page.dart';
import 'package:ddd_flutter_example/presentation/pages/home/home_page.dart';
import 'package:ddd_flutter_example/presentation/pages/splash/splash_page.dart';
import 'package:ddd_flutter_example/presentation/routes/base_routes/error.dart';
import 'package:flutter/material.dart';

abstract class Routes {
  //initial route home here
  static const initialRoute = '/';
  static const loginPage = '/login-page';
  static const registerPage = '/register-page';
  static const homePage = '/home-page';
}

class RouteGenerator {
  static Route onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SplashPage(),
          settings: settings,
        );
      case Routes.loginPage:
        return MaterialPageRoute(
          builder: (_) => LoginPage(),
          settings: settings,
        );

      case Routes.registerPage:
        return MaterialPageRoute(
          builder: (_) => RegisterPage(),
          settings: settings,
        );

      case Routes.homePage:
        return MaterialPageRoute(
          builder: (_) => HomePage(),
          settings: settings,
        );

      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//****************************************************************************
