import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CityHeader2 extends StatefulWidget {
  final Map<String, dynamic> city;
  const CityHeader2({super.key, required this.city});

  @override
  State<CityHeader2> createState() => _CityHeader2State();
}

class _CityHeader2State extends State<CityHeader2> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return CarouselSlider(
      options: CarouselOptions(height: 400.0),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.amber),
                child: Text(
                  'text $i',
                  style: TextStyle(fontSize: 16.0),
                ));
          },
        );
      }).toList(),
    );
  }
}
