import 'package:bilhetinhos/modules/auth/presentation/pages/login_page.dart';
import 'package:bilhetinhos/modules/auth/presentation/pages/register_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const loginPage = '/login';
  static const registerPage = '/register-user';
}

class AppRoutesBuilder {
  static Map<String, WidgetBuilder> routes() => {
    AppRoutes.loginPage: (context) => LoginPage(),
    AppRoutes.registerPage: (context) => const RegisterPage(),
  };

  static Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      // TODO: add pages with parameters
      default:
        return null;
    }
  }
}
