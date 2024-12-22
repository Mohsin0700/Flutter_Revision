import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_api_provider/statemanagement/my_providers.dart';
import 'package:todo_api_provider/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: MyProviders.myProviders,
      child: const MaterialApp(
        home: HomeView(),
      ),
    );
  }
}
