import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhase {
    var resultText;
    if (resultScore >= 60) {
      resultText = 'you are awesome';
    } else if (resultScore >= 40) {
      resultText = 'Not Bad';
    } else {
      resultText = 'Strange';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhase,
            style: TextStyle(color: Colors.black, fontSize: 36),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Reset Quiz'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
