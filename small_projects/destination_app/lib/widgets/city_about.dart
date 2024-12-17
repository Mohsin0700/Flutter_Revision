import 'package:flutter/material.dart';

class CityAbout extends StatelessWidget {
  final Map<String, dynamic> city;
  const CityAbout({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(45),
      child: Container(
        height: screenSize.height * 0.6,
        width: screenSize.width * 0.8,
        color: const Color(0xffFFFFFF),
        padding: const EdgeInsets.all(35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "About",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              city["about"],
              textAlign: TextAlign.justify,
            ),
            const Text(
              "Photos",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 50,
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: city["images"].length,
                  itemBuilder: (context, index) {}),
            )
          ],
        ),
      ),
    );
  }
}
