import 'package:flutter/cupertino.dart';

class OpacityModel extends ChangeNotifier {
  double opacity = 0;
  showItems() async {
    await Future.delayed(const Duration(seconds: 2));
    opacity = 1;
    notifyListeners();
  }
}
