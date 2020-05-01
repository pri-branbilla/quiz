import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    return 'Your score: $resultScore';
  }

  @override
  Widget build(BuildContext context) {
    // return Text(this.questionText);
    return Center(
      child: Text(resultPhrase, style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),)
    );
  }
}