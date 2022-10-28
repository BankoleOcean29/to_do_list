import 'package:flutter/material.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({Key? key}) : super(key: key);

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  final _textFieldValue = TextEditingController();

  bool isBoxChecked = false;

  bool _checkBoxIsVisible = false;
  bool _microphoneIsVisible = true;

  List<String> tasks = [];

  void _addTodoItem(String title) {
    setState(() {
      tasks.add(title);
    });
  }

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpened = MediaQuery.of(context).viewInsets.bottom != 0.0;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff77114152),
      appBar: AppBar(
        title: const Text(
          'TO Do',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color(0xff80CBC4),//80CBC4
        leading: const Icon(
          Icons.check,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Stack(children: [
          Column(
            children: [
              SizedBox(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: tasks.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      String task = tasks[index];
                      return Dismissible(
                        key: Key(task),
                        onDismissed: (direction) {
                          setState(() {
                            tasks.removeAt(index);
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            height: 40,
                            decoration: const BoxDecoration(
                              color: Color(0xff795548),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child:Center(
                              child: Text(
                                  tasks[index],
                                  style: const TextStyle(color: Colors.white),
                                ),
                            ),
                            ),
                        ),
                      );
                    }),
              ),
            ],
          ),
          SizedBox(
            child: Padding(
              padding: EdgeInsets.only(
                  top: 570.0,
                  left: 320,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 10),
              child: keyboardIsOpened ? null : FloatingActionButton(
                  backgroundColor: const Color(0xff80CBC4),
                  onPressed: () {},
                  child: const Icon(
                    Icons.add,
                    color: Colors.black,
                  )),
            ),
          )
        ]),
      ),
      bottomSheet: BottomSheet(
        backgroundColor: const Color(0xff795548),
        enableDrag: false,
        builder: (context) => Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Container(
            alignment: FractionalOffset.bottomCenter,
            height: 70,
            color: const Color(0xff795548),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Visibility(
                  child: const Icon(
                    Icons.mic,
                  ),
                  visible: _microphoneIsVisible,
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 8.0, left: 10, right: 20),
                  child: TextField(
                    controller: _textFieldValue,
                    onTap: () {
                      setState(() {
                        _checkBoxIsVisible = true;
                        _microphoneIsVisible = false;
                      });
                    },
                    maxLines: 1,
                    style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                    decoration: const InputDecoration(
                        hintText: 'Enter a quick task here',
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Visibility(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IconButton(
                    icon: const Icon(Icons.check),
                    onPressed: () {
                      setState(() {
                        _addTodoItem(_textFieldValue.text);
                      });
                      _textFieldValue.clear();
                    },
                  ),
                ),
                visible: _checkBoxIsVisible,
              )
            ]),
          ),
        ),
        onClosing: () {},
      ),
    );
  }
}
