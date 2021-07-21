import 'package:flutter/material.dart';
import './question.dart';

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
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: _answer,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: _answer,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: _answer,
            ),
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
