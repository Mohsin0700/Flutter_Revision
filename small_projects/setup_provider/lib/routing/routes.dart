import 'package:flutter/material.dart';
import 'package:setup_provider/routing/rout_names.dart';
import 'package:setup_provider/views/login_view.dart';

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginView());

      case RoutNames.loginView:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginView());
      case RoutNames.homeView:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginView());

      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Scaffold(
                  body: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('Something went wrong')],
                    ),
                  ),
                ));
    }
  }
}
