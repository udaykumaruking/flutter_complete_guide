import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());
// We can use arrow functions like above if it has only one statement to be executed

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TOD: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
    //print("Answer Chosen!");
  }

  // Each class shoud extend either stateless of stateful widget since each and everything in flutter is a widget.
  @override
  // App works without @override funtion too but its used for clearing doubts and styling purposes. It says that we are deliberately overriding stateless widget build function
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color',
      'What\'s your favorite animal',
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
              Text(questions[_questionIndex]),
              RaisedButton(child: Text("Answer 1"), onPressed: _answerQuestion),
              RaisedButton(child: Text("Answer 2"), onPressed: _answerQuestion),
              RaisedButton(child: Text("Answer 3"), onPressed: _answerQuestion),
            ],
          )
          // Widget in angular brackets says the list - "[]" is of widget type

          ),
    );
  }
}
