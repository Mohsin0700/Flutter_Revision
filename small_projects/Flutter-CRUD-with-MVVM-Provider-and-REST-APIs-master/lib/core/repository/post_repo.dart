import 'package:api_crud/core/models/post_model.dart';
import 'package:api_crud/core/services/api_service.dart';
import 'package:flutter/material.dart';

class PostRepo extends ChangeNotifier {
  final _apiClient = ApiService();

  Future<List<PostModel>> getPosts() async {
    List<PostModel> posts = [];
    List postsResponse = await _apiClient.get('posts');
    for (var post in postsResponse) {
      posts.add(PostModel.fromJson(post));
    }
    return posts;
  }
}
