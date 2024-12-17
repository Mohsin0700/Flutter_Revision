import 'package:flutter/material.dart';

class MyCard2 extends StatelessWidget {
  final String title;
  final int area;
  final String img;
  const MyCard2(
      {super.key, required this.title, required this.area, required this.img});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      color: const Color(0xffFFFFFF),
      height: screenSize.height * 0.25,
      width: screenSize.width * 0.8,
      margin: const EdgeInsets.only(right: 15),
      child: Card(
        color: const Color.fromARGB(255, 239, 233, 233),
        margin: EdgeInsets.zero,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  img,
                  height: 127,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0B4980)),
                  ),
                  Text(
                    "Area: ${area.toString()}",
                    style: const TextStyle(
                        color: Color(0xffFD881C), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
