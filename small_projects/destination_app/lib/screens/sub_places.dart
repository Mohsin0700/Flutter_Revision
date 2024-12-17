import 'package:destination_app/screens/single_city.dart';
import 'package:flutter/material.dart';

class SubPlaces extends StatelessWidget {
  final Map<String, dynamic> province;
  final int? places;
  const SubPlaces({super.key, required this.province, this.places});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE0E8EF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          province["name"],
          style: const TextStyle(color: Color(0xff0B4980)),
        ),
      ),
      body: ListView.builder(
          itemCount: places,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SingleCity(city: province["visitingPlaces"][index]))),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: const Color(0xffA7BACB),
                  ),
                ),
                margin: const EdgeInsets.only(top: 15),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(90),
                    child: Image.asset(
                      province["visitingPlaces"][index]["images"][0],
                      height: 75,
                      width: 75,
                    ),
                  ),
                  title: Text(province["visitingPlaces"][index]["name"]),
                ),
              ),
            );
          }),
    );
  }
}
