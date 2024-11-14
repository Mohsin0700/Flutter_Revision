import 'package:flutter/material.dart';

class Case2 extends StatelessWidget {
  const Case2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 200,
          color: Colors.blueAccent,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (c, i) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 100,
                  color: Colors.green,
                );
              }),
        )
      ]),
    );
  }
}
