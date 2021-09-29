import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(QuizApp());

class _QuizAppState extends State<QuizApp> {
  var _selectedQuestion = 0;
  var _totalPoints = 0;
  final _questions = [
    {
      "text": "What's your favorite color?",
      "answers": [
        {"text": "Black", "point": 10},
        {"text": "White", "point": 5},
        {"text": "Blue", "point": 3},
        {"text": "Red", "point": 1},
      ],
    },
    {
      "text": "What's your favorite pet?",
      "answers": [
        {"text": "Dog", "point": 10},
        {"text": "Cat" "Snake", "point": 5},
        {"text": "Bird", "point": 3},
        {"text": "Mouse", "point": 1},
      ],
    },
    {
      "text": "What's your favorite teacher?",
      "answers": [
        {"text": "Mary", "point": 10},
        {"text": "John", "point": 5},
        {"text": "Wilson", "point": 3},
        {"text": "Jane", "point": 1},
      ]
    }
  ];

  void _answer(int point) {
    setState(() {
      _selectedQuestion++;
      _totalPoints += point;
    });
  }

  void _resetQuiz() {
    setState(() {
      _selectedQuestion = 0;
      _totalPoints = 0;
    });
  }

  bool get hasSelectedQuestion {
    return _selectedQuestion < _questions.length;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: hasSelectedQuestion
            ? Quiz(
                questions: _questions,
                selectedQuestion: _selectedQuestion,
                answer: _answer,
              )
            : Result(_totalPoints, _resetQuiz),
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  _QuizAppState createState() {
    return _QuizAppState();
  }
}
