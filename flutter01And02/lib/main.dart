import 'package:flutter/material.dart';
import 'package:flutter01/class_2/practice.dart';
import 'package:flutter01/class_2/practice2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Login(),
      // home: Practice(),
      home: Practice2(),
    );
  }
}
