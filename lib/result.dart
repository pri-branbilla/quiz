import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String text;

  Result(this.text);

  @override
  Widget build(BuildContext context) {
    // return Text(this.questionText);
    return Text(text);
  }
}