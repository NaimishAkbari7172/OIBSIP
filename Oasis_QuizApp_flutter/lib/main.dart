import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText':
          'Which one of the following river flows between Vindhyan and Satpura ranges?',
      'answers': [
        {'text': 'Narmada', 'score': 5},
        {'text': 'Mahanadi', 'score': 0},
        {'text': 'Tungabhadra', 'score': 0},
        {'text': 'Netravati', 'score': 0}
      ]
    },
    {
      'questionText': 'The country that has the highest in Barley Production?',
      'answers': [
        {'text': 'China', 'score': 0},
        {'text': 'India', 'score': 0},
        {'text': 'Russia', 'score': 5},
        {'text': 'France', 'score': 0}
      ]
    },
    {
      'questionText': 'Who among the following wrote Sanskrit grammar?',
      'answers': [
        {'text': 'Kalidasa', 'score': 0},
        {'text': 'Charak', 'score': 0},
        {'text': 'Panini', 'score': 5},
        {'text': 'Aryabhatt', 'score': 0}
      ]
    },
    {
      'questionText': 'The hottest planet in the solar system?',
      'answers': [
        {'text': 'Mercury', 'score': 0},
        {'text': 'Venus', 'score': 5},
        {'text': 'Mars', 'score': 0},
        {'text': 'Jupiter', 'score': 0}
      ]
    },
    {
      'questionText':
          'Where was the electricity supply first introduced in India?',
      'answers': [
        {'text': 'Mumbai', 'score': 0},
        {'text': 'Dehradun', 'score': 0},
        {'text': 'Darjeeling', 'score': 5},
        {'text': 'Chennai', 'score': 0}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    }
  }

  void _resetQuiz() {
    setState(() {
      ///This will rebuild the app from the scratch
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
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
