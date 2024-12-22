import 'package:flutter/material.dart';

class HomeViewmodel extends ChangeNotifier {
  final TextEditingController nameController = TextEditingController();

  buttonStatus() {
    ChangeNotifier();
  }

  printMyName(String name) {
    print(name);
  }
}
