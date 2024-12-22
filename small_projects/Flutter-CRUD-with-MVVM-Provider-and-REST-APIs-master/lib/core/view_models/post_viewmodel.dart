import 'package:api_crud/core/models/post_model.dart';
import 'package:api_crud/core/repository/post_repo.dart';
import 'package:flutter/material.dart';

class PostViewModel extends ChangeNotifier {
  final postRepo = PostRepo();
  List<PostModel> posts = [];

  Future<List<PostModel>> getPosts() async {
    posts = await postRepo.getPosts();
    // notifyListeners();
    return posts;
  }
}
