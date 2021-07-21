import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String title;
  final void Function() onPressed;

  Answer(this.title, this.onPressed);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          textStyle: TextStyle(color: Colors.white),
        ),
        onPressed: onPressed,
        child: Text(title),
      ),
    );
  }
}
