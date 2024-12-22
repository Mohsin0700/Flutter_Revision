import 'package:api_crud/core/view_models/addunicorn_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddUnicornView extends StatelessWidget {
  const AddUnicornView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Add Unicorn'),
        centerTitle: true,
      ),
      body: Consumer<AddUnicornViewModel>(builder: (
        context,
        viewmodel,
        child,
      ) {
        if (viewmodel.state == ViewState.Busy) {
          return const CircularProgressIndicator();
        } else {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextField(
                  controller: viewmodel.nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Enter Name'),
                  ),
                ),
                TextField(
                  controller: viewmodel.ageController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Enter Age'),
                  ),
                ),
                TextField(
                  controller: viewmodel.colourController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Enter Colour'),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                    onPressed: () {
                      viewmodel.addUnicornn();
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('Add Unicorn'))
              ],
            ),
          );
        }
      }),
    );
  }
}
