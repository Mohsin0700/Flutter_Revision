import 'package:api_crud/core/routes/routes_name.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Home View'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, RoutesName.postView);
            //     },
            // child: const Text('visit PostView')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesName.unicornView);
                },
                child: const Text('Watch Unicorns')),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesName.addUnicornView);
                },
                child: const Text('Add Unicorns')),
          ],
        ),
      ),
    );
  }
}
