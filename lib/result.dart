import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You Did It!';
    if (resultScore <= 150) {
      resultText = 'You are Awesome and inncoent';
    } else if (resultScore <= 120) {
      resultText = 'Pretty Likeable';
    } else if (resultScore <= 96) {
      resultText = 'You are strange';
    } else {
      resultText = 'You are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz',
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
      // Widget in angular brackets says the list - "[]" is of widget type
    );
  }
}
