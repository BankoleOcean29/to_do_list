import 'package:flutter/material.dart';
import 'package:to_do_list/screens/ToDoHome.dart';

void main() {
  runApp(const ToDo());
}

class ToDo extends StatelessWidget {
  const ToDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}


