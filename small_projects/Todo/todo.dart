import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  // List<String> students = ["Mohsin", "Arbab", "Ali", "Hanzala", "Hasan"];
  List<String> students = [];
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(controller: nameController),
      ),
      body: ListView.builder(
          itemCount: students.length,
          itemBuilder: (context, index) {
            return students.isEmpty
                ? const Center(
                    child: Icon(
                      Icons.question_mark_sharp,
                      color: Colors.black,
                      size: 50,
                    ),
                  )
                : Container(
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      tileColor: Colors.amberAccent,
                      title: Text(students[index]),
                      trailing: IconButton(
                        onPressed: () {
                          students.removeAt(index);
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  );
          }),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            students.add(nameController.text);
            setState(() {});
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
    );
  }
}
