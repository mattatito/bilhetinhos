import 'package:bilhetinhos/modules/auth/presentation/pages/login_page.dart';
import 'package:bilhetinhos/modules/auth/presentation/pages/create_account_page.dart';
import 'package:bilhetinhos/modules/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const loginPage = '/login';
  static const registerPage = '/register-user';
  static const homePage = '/home';
}

class AppRoutesBuilder {
  static Map<String, WidgetBuilder> routes() => {
    AppRoutes.loginPage: (context) => LoginPage(),
    AppRoutes.registerPage: (context) => CreateAccountPage(),
    AppRoutes.homePage: (context) => const HomePage(),
  };

  static Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      // TODO: add pages with parameters
      default:
        return null;
    }
  }
}
