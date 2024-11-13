import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "ListTile VS Custom ListTile",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const Text(
            "Flutter built-in ListTile",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          ListTile(
            minTileHeight: 75,
            tileColor: const Color.fromARGB(144, 157, 183, 197),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(45),
              child: Image.asset(
                "assets/images/1.jpg",
              ),
            ),
            title: const Text(
              "Mohsin Hussain",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("Ye flutter ki built-in listTile hai"),
            trailing: const Text("4:45"),
          ),
          const SizedBox(
            height: 100,
          ),
          const Text(
            "Custom ListTile",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 75,
            color: const Color.fromARGB(144, 157, 183, 197),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(45),
                    child: Image.asset(
                      "assets/images/2.jpg",
                      height: 60,
                    ),
                  ),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hafiz Mohsin",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Ye Custom LisTile hai"),
                  ],
                ),
                const Spacer(),
                const Text("4:50"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
