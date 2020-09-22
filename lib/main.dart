import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';

import './result.dart';
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
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color',
      'answers': [
        {'text': 'Red', 'score': 20},
        {'text': 'Green', 'score': 30},
        {'text': 'Blue', 'score': 60},
        {'text': 'Black', 'score': 10}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': [
        {'text': 'Dog', 'score': 24},
        {'text': 'Elephant', 'score': 60},
        {'text': 'Cat', 'score': 20},
        {'text': 'Rabbit', 'score': 90}
      ],
    },
    {
      'questionText': 'What\'s your favorite Subject',
      'answers': [
        {'text': 'Chemistry', 'score': 30},
        {'text': 'Social', 'score': 20},
        {'text': 'Maths', 'score': 40},
        {'text': 'Physics', 'score': 60}
      ]
    },
  ];
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(
      () {
        _questionIndex += 1;
      },
    );
    if (_questionIndex < _questions.length) {
      print("We have more questions");
    }

    print(_questionIndex);
    //print("Answer Chosen!");
  }

  // Each class shoud extend either stateless of stateful widget since each and everything in flutter is a widget.
  @override
  // App works without @override funtion too but its used for clearing doubts and styling purposes. It says that we are deliberately overriding stateless widget build function
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Scaffold: It gives basic app layout it has app bar and body kinda things
        appBar: AppBar(
          title: Text('Flutter Complete Guide'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
