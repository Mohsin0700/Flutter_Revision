import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class MyToast extends StatelessWidget {
  const MyToast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: const Text("FLutter styled toasts"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showToast("This is a basic toast", context: context);
                },
                child: const Text("Show basic toast")),
            ElevatedButton(
                onPressed: () {
                  showToastWidget(
                      TextButton.icon(
                        icon: const Icon(Icons.done),
                        onPressed: () {},
                        label: const Text(
                          "This is a customized toast",
                          style: TextStyle(
                              color: Colors.lime,
                              fontSize: 24,
                              backgroundColor: Colors.black),
                        ),
                      ),
                      context: context);
                },
                child: const Text("Show Styled toast")),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (c) {
                      return const AlertDialog(
                        title: Text("This is alert message"),
                      );
                    });
              },
              child: const Text("Show Alert"),
            )
          ],
        ),
      ),
    );
  }
}
