import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final questions = const [
    {
      'questionText': '?',
      'answers': ['1', '2']
    },
    {
      'questionText': '??',
      'answers': ['3', '4']
    },
    {
      'questionText': '???',
      'answers': ['5', '6']
    },
    {
      'questionText': '????',
      'answers': ['7', '8']
    },
  ];

  void _answerQuestion() {
    if (_questionIndex < questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }

    print('answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: _questionIndex < questions.length
          ? Quiz(
            questions: questions,
            questionIndex: _questionIndex,
            answerQuestion: _answerQuestion)
          : Result('finished'),
    ));
  }
}
