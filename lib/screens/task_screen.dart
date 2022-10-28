import 'package:flutter/material.dart';
import 'package:to_do_list/screens/to_do_screen.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New task',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color(0xff80CBC4), //80CBC4
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
            /*Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ToDoScreen()),
            );*/
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
