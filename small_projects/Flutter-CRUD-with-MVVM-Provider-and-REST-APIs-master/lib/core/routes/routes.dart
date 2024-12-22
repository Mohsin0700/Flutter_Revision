import 'package:api_crud/core/routes/routes_name.dart';
import 'package:api_crud/ui/views/add_unicorn.dart';
import 'package:api_crud/ui/views/home_view.dart';
import 'package:api_crud/ui/views/post_view.dart';
import 'package:api_crud/ui/views/singleunicorn_view.dart';
import 'package:api_crud/ui/views/unicorn_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeView());
      case RoutesName.homeView:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeView());
      case RoutesName.postView:
        return MaterialPageRoute(
            builder: (BuildContext context) => const PostView());
      case RoutesName.unicornView:
        return MaterialPageRoute(
            builder: (BuildContext context) => const UnicornView());
      case RoutesName.addUnicornView:
        return MaterialPageRoute(
            builder: (BuildContext context) => const AddUnicornView());
      case RoutesName.singleUnicornView:
        final args = settings.arguments as Map;
        return MaterialPageRoute(
            builder: (BuildContext context) => SingleUnicornView(
                  args: args,
                ));

      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Scaffold(
                  body: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('No route found')],
                    ),
                  ),
                ));
    }
  }
}
