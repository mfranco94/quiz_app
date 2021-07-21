import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String title;

  Question(this.title);

  Widget build(BuildContext context) {
    return Text(title);
  }
}
