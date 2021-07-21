import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String title;

  Answer(this.title);

  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      child: Text(title),
    );
  }
}
