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
  var _totalScore = 0;

  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [{'text': 'Black', 'score': 10}, {'text': 'Red', 'score': 5}, {'text': 'Green', 'score': 8}, {'text': 'Blue', 'score': 15}]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [{'text': 'Rabbit', 'score': 10}, {'text': 'Snake', 'score': 15}, {'text': 'Elephant', 'score': 8}, {'text': 'Lion', 'score': 12}]
    },
    {
      'questionText': 'What\'s your favorite season?',
      'answers': [{'text': 'Summer', 'score': 10}, {'text': 'Outumn', 'score': 10}, {'text': 'Winter', 'score': 10}, {'text': 'Spring', 'score': 10}]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {

    _totalScore += score;

    if (_questionIndex < questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: _questionIndex < questions.length
          ? Quiz(
            questions: questions,
            questionIndex: _questionIndex,
            answerQuestion: _answerQuestion)
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
