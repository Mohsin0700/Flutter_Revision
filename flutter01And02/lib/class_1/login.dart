import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff7B4FF5),
        title: const Text("Login",
            style:
                TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold)),
      ),
      body: Container(
        color: Colors.green,
      ),
    );
  }
}
