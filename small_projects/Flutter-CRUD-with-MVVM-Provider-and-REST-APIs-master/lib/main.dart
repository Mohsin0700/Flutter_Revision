import 'package:api_crud/core/repository/post_repo.dart';
import 'package:api_crud/core/routes/routes.dart';
import 'package:api_crud/core/services/api_service.dart';
import 'package:api_crud/core/view_models/addunicorn_viewmodel.dart';
import 'package:api_crud/core/view_models/post_viewmodel.dart';
import 'package:api_crud/core/view_models/singleunicorn_viewmodel.dart';
import 'package:api_crud/core/view_models/unicorn_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  // setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SingleUnicornViewModel>(
            create: (context) => SingleUnicornViewModel()),
        ChangeNotifierProvider<AddUnicornViewModel>(
            create: (context) => AddUnicornViewModel()),
        ChangeNotifierProvider<UnicornViewModel>(
            create: (BuildContext context) => UnicornViewModel()),
        ChangeNotifierProvider<PostViewModel>(
            create: (BuildContext context) => PostViewModel()),
        ChangeNotifierProvider<ApiService>(
            create: (BuildContext context) => ApiService()),
        ChangeNotifierProvider<PostRepo>(
            create: (BuildContext context) => PostRepo()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        onGenerateRoute: Routes.onGenerateRoute,
      ),
    );
  }
}
