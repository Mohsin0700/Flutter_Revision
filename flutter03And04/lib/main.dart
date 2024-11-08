import 'package:flutter/material.dart';
import 'package:flutter03/class3/class3.dart';
import 'package:flutter03/class3/practice.dart';
import 'package:flutter03/class4/class4.dart';
import 'package:flutter03/class4/practice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Class3(),
      // home: Practice(),
      // home: Class4(),
      home: AddToFav(),
    );
  }
}
