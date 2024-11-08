import 'package:flutter/material.dart';

class AddToFav extends StatefulWidget {
  const AddToFav({super.key});

  @override
  State<AddToFav> createState() => _AddToFavState();
}

class _AddToFavState extends State<AddToFav> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text(
          "Add to favourite",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(
                Icons.favorite,
                size: 100,
                color: isFav == true ? Colors.pink : Colors.grey,
              ),
              onPressed: () {
                if (isFav == true) {
                  isFav = false;
                } else {
                  isFav = true;
                }
                setState(() {});
              },
            ),
            const Text("Click me!")
          ],
        ),
      ),
    );
  }
}
