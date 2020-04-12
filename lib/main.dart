import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var strings = ['LaLALLaa', '??????', 'aieufhgaevg', 'AAAAA'];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: Column(
        children: [
          Question(strings[_questionIndex]),
          RaisedButton(
            child: Text('1'),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: Text('2'),
            onPressed: _answerQuestion,
          ),
        ],
      ),
    ));
  }
}
