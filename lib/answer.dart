import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Function handleChoice;
  String buttonText;

  Answer(this.buttonText, this.handleChoice);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          child: Text(buttonText),
          onPressed: handleChoice,
          color: Colors.blue,
        ));
  }
}
