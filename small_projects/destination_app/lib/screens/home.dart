// ignore_for_file: unnecessary_const

import 'package:destination_app/widgets/custom_button.dart';
import 'package:destination_app/widgets/drawer.dart';
import 'package:destination_app/widgets/my_carousel.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: const Color(0xff0B4980)),
      ),
      drawer: const MyDrawer(),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bghome.png"),
                fit: BoxFit.cover)),
        child: const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: double.infinity),
              Text(
                "Find the beauty!",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0B4980)),
              ),
              Text(
                "Never miss a thing around you",
                style: TextStyle(color: Color(0xff0B4980)),
              ),
              SizedBox(
                height: 10,
              ),
              MyCarousel(),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const CustomButton(
        nextScreen: Placeholder(),
        title: "Explore all places",
        buttonColor: Color(0xff0B4980),
      ),
    );
  }
}
