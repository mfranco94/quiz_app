import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(QuizApp());

class _QuizAppState extends State<QuizApp> {
  var _selectedQuestion = 0;

  void _answer() {
    setState(() {
      _selectedQuestion++;
      print(_selectedQuestion);
    });
  }

  Widget build(BuildContext context) {
    final questions = [
      "What's your favorite color?",
      "What's your favorite pet?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Column(
          children: [
            Question(questions[_selectedQuestion]),
            Answer('Answer 1', _answer),
            Answer('Answer 2', _answer),
            Answer('Answer 3', _answer),
          ],
        ),
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  _QuizAppState createState() {
    return _QuizAppState();
  }
}
