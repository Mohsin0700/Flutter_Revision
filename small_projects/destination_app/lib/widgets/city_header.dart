import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CityHeader extends StatefulWidget {
  final Map<String, dynamic> city;
  const CityHeader({super.key, required this.city});

  @override
  State<CityHeader> createState() => _CityHeaderState();
}

class _CityHeaderState extends State<CityHeader> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.city["images"][1]),
          fit: BoxFit.cover,
        ),
      ),
      child: SizedBox(
        height: screenSize.height * 0.3,
        width: screenSize.width,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              widget.city["name"],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 4.0,
                    color: Colors.black,
                    offset: Offset(1.0, 1.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
