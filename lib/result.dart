import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int points;
  final void Function() resetQuiz;

  Result(this.points, this.resetQuiz);

  String get resultSentence {
    if (points < 8) {
      return "Congratulations!";
    } else if (points < 12) {
      return "You're good!";
    } else if (points < 16) {
      return "Awesome!";
    } else {
      return "Jedi level!";
    }
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            resultSentence,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          onPressed: resetQuiz,
          child: Text("Reset?"),
          style: TextButton.styleFrom(
            textStyle: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
