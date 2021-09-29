import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int selectedQuestion;
  final List<Map<String, Object>> questions;
  final void Function(int) answer;

  Quiz({
    required this.questions,
    required this.selectedQuestion,
    required this.answer,
  });

  bool get hasSelectedQuestion {
    return selectedQuestion < questions.length;
  }

  Widget build(BuildContext context) {
    List<Map<String, Object>> answers = hasSelectedQuestion
        ? questions[selectedQuestion].cast()["answers"]
        : [];

    return Column(
      children: [
        Question(questions[selectedQuestion]["text"].toString()),
        ...answers.map((ans) {
          return Answer(
            ans["text"].toString(),
            () => answer(int.parse(ans["point"].toString())),
          );
        })
      ],
    );
  }
}
