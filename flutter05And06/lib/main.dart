import 'package:flutter/material.dart';
import 'package:flutter05/class06/todo.dart';
// import 'package:flutter05/class05/practice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Practice(),
      home: Todo(),
    );
  }
}
