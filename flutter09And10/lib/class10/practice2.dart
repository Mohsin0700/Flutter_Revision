import 'package:flutter/material.dart';

class Practice2 extends StatelessWidget {
  const Practice2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: const Text("Stack widget"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              // color: Colors.grey,
            ),
            Positioned(
              left: 10,
              top: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(90),
                child: Container(
                  height: 180,
                  width: 180,
                  color: Colors.blueGrey,
                  child: const Icon(
                    Icons.face,
                    size: 100,
                  ),
                ),
              ),
            ),
            Positioned(
                right: 20,
                top: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(90),
                  child: Container(
                    height: 20,
                    width: 20,
                    color: Colors.green,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
