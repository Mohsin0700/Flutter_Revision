import 'package:destination_app/constants/app_constants.dart';
import 'package:destination_app/screens/sub_places.dart';
import 'package:destination_app/widgets/card2.dart';
import 'package:flutter/material.dart';

class MyCarousel extends StatefulWidget {
  const MyCarousel({super.key});

  @override
  State<MyCarousel> createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  final PageController _pageController = PageController(viewportFraction: 0.7);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    final provinces = ConstantData.provinces;

    return SizedBox(
      height: screenSize.height * 0.25,
      width: screenSize.width * 0.9,
      child: PageView.builder(
        controller: _pageController,
        itemCount: provinces.length,
        itemBuilder: (context, index) {
          Map<String, dynamic> province = provinces[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SubPlaces(
                    province: province,
                    places: province["visitingPlaces"].length,
                  ),
                ),
              );
            },
            child: MyCard2(
              title: province["name"],
              area: province["area"],
              img: province["img"],
            ),
          );
        },
      ),
    );
  }
}
