import 'package:flutter/material.dart';
import 'package:setup_provider/routing/rout_names.dart';
import 'package:setup_provider/routing/routes.dart';
import 'package:setup_provider/views/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: RoutNames.loginView,
      debugShowCheckedModeBanner: false,
      home: LoginView(),
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
