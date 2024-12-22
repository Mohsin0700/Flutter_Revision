import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_api_provider/view_models/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lime,
          title: const Text("All Todos"),
        ),
        body: Provider<HomeViewmodel>(
          create: (context) => HomeViewmodel(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller:
                            context.read<HomeViewmodel>().nameController,
                        decoration:
                            const InputDecoration(border: OutlineInputBorder()),
                        onChanged: context.read<HomeViewmodel>().buttonStatus(),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: context
                                .read<HomeViewmodel>()
                                .nameController
                                .text
                                .isEmpty
                            ? null
                            : () {
                                context.read<HomeViewmodel>().printMyName(
                                    context
                                        .read<HomeViewmodel>()
                                        .nameController
                                        .text);
                              },
                        child: const Text("Add"))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
