import 'package:api_crud/core/models/post_model.dart';
import 'package:api_crud/core/view_models/post_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Post View'),
        centerTitle: true,
      ),
      body: Consumer<PostViewModel>(builder:
          (BuildContext context, PostViewModel viewModel, Widget? child) {
        return FutureBuilder(
            future: viewModel.getPosts(),
            builder: (BuildContext context,
                AsyncSnapshot<List<PostModel>> snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          tileColor: Colors.yellowAccent,
                          title:
                              Text('User Name :${snapshot.data?[index].title}'),
                        ),
                      );
                    });
              }
            });
      }),
    );
  }
}
