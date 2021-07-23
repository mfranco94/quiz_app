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
    List<Widget> answers = [];
    for (String answerText in questions[_selectedQuestion].cast()["answers"]) {
      answers.add(Answer(answerText, _answer));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Column(
          children: [
            Question(questions[_selectedQuestion]["text"].toString()),
            ...answers,
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
