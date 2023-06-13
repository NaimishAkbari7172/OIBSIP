import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You correctly answered 1 question!';
    if (resultScore <= 10) {
      resultText = 'You correctly answered 2 question!';
    } else if (resultScore <= 15) {
      resultText = 'You correctly answered 3 question!';
    } else if (resultScore <= 20) {
      resultText = 'You correctly answered 4 question!';
    } else if (resultScore <= 25) {
      resultText = 'You are a Genius!';
    } else {
      resultText = 'You are Bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          TextButton(
            child: Text(
              'Restart Quiz!',
            ),
            style:
                TextButton.styleFrom(textStyle: TextStyle(color: Colors.blue)),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
