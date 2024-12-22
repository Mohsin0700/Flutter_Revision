// ignore_for_file: prefer_final_fields, unused_local_variable

import 'package:api_crud/core/repository/unicorn_repo.dart';
import 'package:flutter/material.dart';

// ignore: constant_identifier_names
enum ViewState { Idle, Busy }

class AddUnicornViewModel extends ChangeNotifier {
  UnicornRepo unicornRepo = UnicornRepo();

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController colourController = TextEditingController();

  ViewState state = ViewState.Idle;

  setState(ViewState viewState) {
    state = viewState;
  }

  addUnicornn() {
    int ageInInt = int.parse(ageController.text);
    Map<String, dynamic> body = {
      "name": nameController.text,
      "age": ageInInt,
      "colour": colourController.text,
    };

    unicornRepo.addUnicorn(body: body);
    colourController.clear();
    nameController.clear();
    ageController.clear();
  }
}
