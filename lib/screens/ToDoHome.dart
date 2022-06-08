import 'package:flutter/material.dart';

class ToDoHome extends StatefulWidget {
  const ToDoHome({Key? key}) : super(key: key);

  @override
  State<ToDoHome> createState() => _ToDoHomeState();
}

class _ToDoHomeState extends State<ToDoHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title: const Text(
          'TO Do',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber,
        leading: const Icon(
          Icons.check,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 570.0, left: 300, bottom: MediaQuery.of(context).viewInsets.bottom + 10),
              child: FloatingActionButton(
                backgroundColor: Colors.amber,
                  onPressed: () {}, child: Icon(Icons.add, color: Colors.black,)),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Container(
                alignment: FractionalOffset.bottomCenter,
                height: 70,
                color: Colors.grey,
                child: Row(children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.mic,),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 8.0, left: 10, right: 10),
                      child: TextField(
                        maxLines: 1,
                        style: TextStyle(color: Colors.amber),
                        decoration: InputDecoration(
                            hintText: 'Enter quick task here',
                            hintStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
