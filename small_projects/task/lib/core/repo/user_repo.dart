import 'package:flutter/material.dart';
import 'package:task/core/models/user_model.dart';
import 'package:task/core/services/api_service.dart';

class UserRepo extends ChangeNotifier {
  final _apiClient = ApiService();

  Future<List<UserModel>> getUsers() async {
    List<UserModel> allUsers = [];
    List response = await _apiClient.getApi();
    for (var user in response) {
      allUsers.add(UserModel.fromJson(user));
    }
    return allUsers;
  }
}
