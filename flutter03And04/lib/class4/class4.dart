import 'package:flutter/material.dart';

class Class4 extends StatefulWidget {
  const Class4({super.key});

  @override
  State<Class4> createState() => _Class4State();
}

class _Class4State extends State<Class4> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 5, 83, 147),
        title: const Text("Counter App", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(count.toString(),
                style: const TextStyle(
                    fontSize: 100, color: Color.fromARGB(255, 5, 83, 147))),
            ElevatedButton(
                onPressed: () {
                  count = 0;
                  setState(() {});
                },
                child: const Icon(
                  Icons.delete,
                  color: Colors.red,
                )),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 50,
        width: 100,
        child: ElevatedButton.icon(
          onPressed: () {
            count++;
            setState(() {});
          },
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          label: const Text(
            "Add",
            style: TextStyle(color: Colors.white),
          ),
          style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll<Color>(
                  Color.fromARGB(255, 5, 83, 147))),
        ),
      ),
    );
  }
}
