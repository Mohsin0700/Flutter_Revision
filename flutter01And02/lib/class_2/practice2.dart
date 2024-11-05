import 'package:flutter/material.dart';

class Practice2 extends StatelessWidget {
  const Practice2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.yellowAccent,
                height: 100,
                width: 100,
              ),
              // Container(
              //   color: Colors.blue,
              //   height: 100,
              //   width: 100,
              // ),
              Container(
                color: Colors.green,
                height: 150,
                // width: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
