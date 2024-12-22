import 'package:flutter/material.dart';
import 'package:task/shared/app_constants.dart';

class CustomListtile extends StatelessWidget {
  final String userName;
  const CustomListtile({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppConstants.lightContainer,
          borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.only(top: 10),
      child: ListTile(
        title: Text('Name: $userName'),
      ),
    );
  }
}
