import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(QuizApp());

class _QuizAppState extends State<QuizApp> {
  var _selectedQuestion = 0;
  final _questions = [
    {
      "text": "What's your favorite color?",
      "answers": ["Black", "White", "Blue", "Red"],
    },
    {
      "text": "What's your favorite pet?",
      "answers": ["Dog", "Cat" "Snake", "Bird", "Mouse"],
    },
    {
      "text": "What's your favorite teacher?",
      "answers": ["Mary", "John", "Wilson", "Jane"]
    }
  ];

  void _answer() {
    setState(() {
      _selectedQuestion++;
      print(_selectedQuestion);
    });
  }

  bool get hasSelectedQuestion {
    return _selectedQuestion < _questions.length;
  }

  Widget build(BuildContext context) {
    List<String> answers = hasSelectedQuestion
        ? _questions[_selectedQuestion].cast()["answers"]
        : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: hasSelectedQuestion
            ? Column(
                children: [
                  Question(_questions[_selectedQuestion]["text"].toString()),
                  ...answers.map((t) => Answer(t, _answer)).toList(),
                ],
              )
            : null,
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  _QuizAppState createState() {
    return _QuizAppState();
  }
}
