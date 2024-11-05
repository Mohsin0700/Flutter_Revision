import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Image.asset(
                "assets/images/splash.png",
                height: screenSize.width / 1.5,
                width: screenSize.height / 1.5,
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(45),
                  child: Image.asset("assets/images/logo.jpg"),
                ),
                title: const Text("Al-Hussain Super Mart"),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Everything you need is in one place",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  "Find something that make you happy and new and feel better with something that make you better than before"),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  minimumSize: Size.fromHeight(screenSize.width / 8),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white38,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  minimumSize: Size.fromHeight(screenSize.width / 8),
                ),
                child: const Text("Register"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
