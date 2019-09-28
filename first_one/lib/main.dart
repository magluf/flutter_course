import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App booyah'),
        ),
        body: Column(
          children: [
            Question(
              questions[questionIndex]['questionText'],
            ),
            ...(questions[questionIndex]['answers'] as List).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
