import 'package:flutter/material.dart';

class TodoWidget extends StatelessWidget {
  late bool todoValue;
  TodoWidget({Key? key, required bool todoValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Checkbox(
          value: todoValue,
          onChanged: (todoValue) {},
        ),
      ]),
    );
  }
}
