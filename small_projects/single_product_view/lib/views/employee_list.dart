import 'package:flutter/material.dart';
import 'package:single_product_view/views/single_employee_view.dart';

class EmployeeList extends StatelessWidget {
  final List<Map<String, dynamic>> employees = [
    {"name": "Mohsin", "img": "assets/images/e1.jpg"},
    {"name": "Arbab", "img": "assets/images/arbab.jpg"},
    {"name": "Faiz", "img": "assets/images/faiz.jpg"}
  ];
  EmployeeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: const Text("All Employees"),
      ),
      body: ListView.builder(
          itemCount: employees.length,
          itemBuilder: (c, i) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SingleEmployeeView(emplyee: employees[i]);
                }));
              },
              child: SizedBox(
                height: 150,
                child: Column(children: [
                  Image.asset(
                    employees[i]["img"],
                    height: 100,
                  ),
                  Text("Name: ${employees[i]["name"]}"),
                ]),
              ),
            );
          }),
    );
  }
}
