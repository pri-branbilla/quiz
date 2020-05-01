import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    return 'Your score: $resultScore';
  }

  @override
  Widget build(BuildContext context) {
    // return Text(this.questionText);
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultPhrase, style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),),
          FlatButton(child: Text('Restart quiz!'), onPressed: resetHandler,)
        ],
      )
    );
  }
}