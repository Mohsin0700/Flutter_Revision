import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.yellow,
          title: const Text("Login View"),
        ),
        floatingActionButton: ElevatedButton(
            onPressed: () {}, child: const Text("Goto Home Page")),
      ),
    );
  }
}
