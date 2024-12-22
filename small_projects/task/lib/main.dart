import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/core/providers/my_providers.dart';
import 'package:task/shared/app_constants.dart';
import 'package:task/ui/views/all_users.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: MyProvider.allProviders,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        home: const AllUsers(),
      ),
    );
  }
}
