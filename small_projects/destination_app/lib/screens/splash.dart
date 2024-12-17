import 'package:destination_app/screens/home.dart';
import 'package:destination_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: DecoratedBox(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/splash.jpg"),
            fit: BoxFit.cover,
          )),
          child: Padding(
            padding:
                EdgeInsets.only(bottom: screenSize.height * 0.15, left: 25),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                ),
                Spacer(),
                Text(
                  "Free yourself",
                  style: TextStyle(color: Colors.white, fontSize: 34),
                ),
                Text(
                  "Explore amazing places around Pakistan",
                  style: TextStyle(
                      color: Colors.white, backgroundColor: Colors.black),
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: const CustomButton(
          nextScreen: Home(),
          title: "Let's go",
        ),
      ),
    );
  }
}
