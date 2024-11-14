import 'dart:async';

import 'package:class9/class10/practice2.dart';
import 'package:flutter/material.dart';

class Practice1 extends StatefulWidget {
  const Practice1({super.key});

  @override
  State<Practice1> createState() => _Practice1State();
}

class _Practice1State extends State<Practice1> {
  @override
  void initState() {
    print("Init state called");
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) {
        return const Practice2();
      }));
    });
    super.initState();
  }

  @override
  void dispose() {
    print("Widget distroyed");
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.lime,
      body: Center(
        child: Text("Splash Screen"),
      ),
    );
  }
}
