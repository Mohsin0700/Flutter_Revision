import 'package:flutter/material.dart';
import 'package:myclass/classes/class7/class7.dart';
import 'package:myclass/classes/class7/screen3.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        centerTitle: true,
        title: const Text("Screen #02"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (c) {
                    return const Practice();
                  }));
                },
                child: const Text("Back to home")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (c) {
                    return const Screen3();
                  }));
                },
                child: const Text("Go to Third Screen")),
          ],
        ),
      ),
    );
  }
}
