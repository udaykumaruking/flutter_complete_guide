import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());
// We can use arrow functions like above if it has only one statement to be executed

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer Chosen!");
  }

  // Each class shoud extend either stateless of stateful widget since each and everything in flutter is a widget.
  @override
  // App works without @override funtion too but its used for clearing doubts and styling purposes. It says that we are deliberately overriding stateless widget build function
  Widget build(BuildContext context) {
    var questions = [
      'What\s your favorite color',
      'What\s your favorite animal',
    ];
    return MaterialApp(
      home: Scaffold(
          // Scaffold: It gives basic app layout it has app bar and body kinda things
          appBar: AppBar(
            title: Text('Flutter Complete Guide'),
          ),
          body: Column(
            // We can pass only one widget to body
            children: <Widget>[
              Text("Question 1"),
              RaisedButton(child: Text("Answer 1"), onPressed: answerQuestion),
              RaisedButton(child: Text("Answer 2"), onPressed: answerQuestion),
              RaisedButton(child: Text("Answer 3"), onPressed: answerQuestion),
            ],
          )
          // Widget in angular brackets says the list - "[]" is of widget type

          ),
    );
  }
}
