import 'package:flutter/material.dart';
import 'package:to_do_list/screens/to_do_screen.dart';

void main() {
  runApp(const ToDo());
}

class ToDo extends StatelessWidget {
  const ToDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class yolo extends StatefulWidget {
  const yolo({Key? key}) : super(key: key);

  @override
  State<yolo> createState() => _yoloState();
}

class _yoloState extends State<yolo> {

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



