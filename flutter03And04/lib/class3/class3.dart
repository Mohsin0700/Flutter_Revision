import 'package:flutter/material.dart';

class Class3 extends StatelessWidget {
  const Class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(24, 92, 96, 97),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Container(
                  height: 150,
                  color: Colors.red,
                  margin: const EdgeInsets.only(bottom: 10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(height: 100, width: 100, color: Colors.yellow),
                    Container(height: 100, width: 100, color: Colors.green),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(height: 100, width: 100, color: Colors.green),
                    Container(height: 100, width: 100, color: Colors.yellow),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
