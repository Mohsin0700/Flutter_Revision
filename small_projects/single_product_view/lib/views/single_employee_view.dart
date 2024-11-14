import 'package:flutter/material.dart';

class SingleEmployeeView extends StatelessWidget {
  final Map<String, dynamic> emplyee;
  const SingleEmployeeView({super.key, required this.emplyee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lime,
          title: Text(emplyee["name"]),
        ),
        body: Center(
          child: SizedBox(
            height: 200,
            child: Image.asset(
              emplyee["img"],
              height: 199,
            ),
          ),
        ));
  }
}
