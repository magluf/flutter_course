import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      "questionText": "What's your favourite colour?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Yellow", "score": 6},
        {"text": "Red", "score": 3},
        {"text": "Blue", "score": 1}
      ],
    },
    {
      "questionText": "What's your favourite food?",
      "answers": [
        {"text": "Pasta", "score": 2},
        {"text": "Skittles", "score": 11},
        {"text": "Cake", "score": 5},
        {"text": "Pizza", "score": 1}
      ],
    },
    {
      "questionText": "What's your favourite animal?",
      "answers": [
        {"text": "Leopard", "score": 12},
        {"text": "Cat", "score": 2},
        {"text": "Tiger", "score": 5},
        {"text": "Lion", "score": 3}
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App booyah'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(
                resultScore: _totalScore,
                resetHandler: _resetQuiz,
              ),
      ),
    );
  }
}
