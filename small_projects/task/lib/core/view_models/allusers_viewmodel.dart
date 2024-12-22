import 'package:flutter/material.dart';
import 'package:task/core/models/user_model.dart';
import 'package:task/core/repo/user_repo.dart';

class AllusersViewmodel extends ChangeNotifier {
  final userRepo = UserRepo();
  List<UserModel> allUsers = [];
  bool isLoading = true;

  Future<List<UserModel>> getAllUsers() async {
    allUsers = await userRepo.getUsers();
    isLoading = false;
    notifyListeners();
    return allUsers;
  }
}
