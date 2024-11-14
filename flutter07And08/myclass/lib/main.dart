import 'package:flutter/material.dart';
import 'package:myclass/classes/class7/class7.dart';
import 'package:myclass/classes/class8/case1.dart';
import 'package:myclass/classes/class8/case2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const Practice(),
      // home: const Case1(),
      home: const Case2(),
    );
  }
}
