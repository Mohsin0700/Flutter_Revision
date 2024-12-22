import 'package:api_crud/core/models/unicorn_model.dart';
import 'package:api_crud/core/repository/unicorn_repo.dart';
import 'package:flutter/material.dart';

class SingleUnicornViewModel extends ChangeNotifier {
  UnicornRepo unicornRepo = UnicornRepo();

  Future<UnicornModel> getSingleUnicorn(int index) async {
    List<UnicornModel> allUnicorns = await unicornRepo.getUnicorns();
    return allUnicorns[index];
  }
}
