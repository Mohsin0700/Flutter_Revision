import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.red,
                height: 150,
              ),
              const SizedBox(height: 50),
              Container(
                color: Colors.yellow,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      color: Colors.grey,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.amber,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.purple,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.pink,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.indigo,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.tealAccent,
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.yellow,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.cyan,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
