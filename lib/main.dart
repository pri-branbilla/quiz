import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var strings = ['LaLALLaa', '??????'];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: Column(
        children: [
          Text('aff'),
          RaisedButton(
            child: Text('1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('2'),
            onPressed: answerQuestion,
          ),
        ],
      ),
    ));
  }
}
