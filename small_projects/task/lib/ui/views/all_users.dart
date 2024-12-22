import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/core/animation_models/opacity_model.dart';
import 'package:task/core/models/user_model.dart';
import 'package:task/core/view_models/allusers_viewmodel.dart';
import 'package:task/ui/widgets/custom_listtile.dart';

class AllUsers extends StatelessWidget {
  const AllUsers({super.key});

  @override
  Widget build(BuildContext context) {
    final opacityModel = Provider.of<OpacityModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Users"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Consumer<AllusersViewmodel>(
          builder: (context, viewmodel, child) {
            return FutureBuilder<List<UserModel>>(
                future: viewmodel.getAllUsers(),
                builder: (context, snapshot) {
                  if (viewmodel.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      opacityModel.showItems();
                    });
                    return ListView.builder(
                        itemCount: snapshot.data?.length,
                        itemBuilder: (context, index) {
                          return Consumer<OpacityModel>(
                              builder: (context, om, child) {
                            return AnimatedOpacity(
                              opacity: om.opacity,
                              duration: const Duration(seconds: 1),
                              child: CustomListtile(
                                  userName: snapshot.data?[index].name ??
                                      "No username found"),
                            );
                          });
                        });
                  }
                });
          },
        ),
      ),
    );
  }
}
