import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answertext;
  Answer(this.answerHandler, this.answertext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answertext),
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: answerHandler,
      ),
    );
  }
}
