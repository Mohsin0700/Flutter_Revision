import 'package:flutter/material.dart';
import 'package:myclass/classes/class7/screen2.dart';
import 'package:myclass/classes/class7/screen3.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        centerTitle: true,
        title: const Text("Homepage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Screen2();
                  }));
                },
                child: const Text("Goto 2nd screen")),
          ],
        ),
      ),
    );
  }
}
