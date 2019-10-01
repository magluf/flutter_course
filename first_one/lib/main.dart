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
  final _questions = const [
    {
      "questionText": "What's your favourite colour?",
      "answers": ["Black", "Yellow", "Red", "Blue"],
    },
    {
      "questionText": "What's your favourite food?",
      "answers": ["Pasta", "Skittles", "Cake", "Pizza"],
    },
    {
      "questionText": "What's your favourite animal?",
      "answers": ["Leopard", "Cat", "Tiger", "Lion"],
    },
  ];

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {}
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
            : Result(),
      ),
    );
  }
}
