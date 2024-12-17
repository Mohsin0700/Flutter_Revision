import 'package:destination_app/widgets/city_about.dart';
import 'package:destination_app/widgets/city_header.dart';
import 'package:destination_app/widgets/city_header2.dart';
import 'package:flutter/material.dart';

class SingleCity extends StatelessWidget {
  final Map<String, dynamic> city;
  const SingleCity({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffE0E8EF),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              // child: CityHeader(city: city),
              child: CityHeader2(
                city: city,
              ),
            ),
            Positioned(
              top: screenSize.height * 0.2,
              left: screenSize.width * 0.1,
              child: CityAbout(
                city: city,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
