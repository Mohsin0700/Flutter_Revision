import 'package:flutter/material.dart';

class Case1 extends StatelessWidget {
  const Case1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 200,
            color: Colors.blueAccent,
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 20,
              itemBuilder: (c, i) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 100,
                  color: Colors.green,
                );
              })
        ]),
      ),
    );
  }
}
