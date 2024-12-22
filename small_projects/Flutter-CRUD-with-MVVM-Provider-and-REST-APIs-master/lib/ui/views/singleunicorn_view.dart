// ignore_for_file: avoid_print

import 'package:api_crud/core/view_models/singleunicorn_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SingleUnicornView extends StatelessWidget {
  final Map args;

  const SingleUnicornView({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    print(args.toString());
    return Consumer<SingleUnicornViewModel>(
        builder: (BuildContext context, SingleUnicornViewModel model,
                Widget? child) =>
            Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.green,
                title: const Text('Single Unicorn'),
                centerTitle: true,
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Unicorn Name: ${args["name"]}',
                      style: const TextStyle(fontSize: 28)),
                  Text('Unicorn Age: ${args["age"]}',
                      style: const TextStyle(fontSize: 28)),
                  Text('Unicorn Colour: ${args["color"]}',
                      style: const TextStyle(fontSize: 28))
                ],
              ),
            ));
  }
}
