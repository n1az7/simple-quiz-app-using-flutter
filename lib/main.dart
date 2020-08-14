import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(FirstApp());

class FirstApp extends StatefulWidget {
  @override
  _FirstAppState createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  int _questionCount = 0;

  void questionIndex() {
    setState(() {
      _questionCount = _questionCount + 1;
    });
    print(_questionCount);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questiontext': 'what\'s my favourite animal?',
        'answer': ['dog', 'cat', 'tiger', 'lion'],
      },
      {
        'questiontext': 'what\'s my favourite color?',
        'answer': ['blue', 'red', 'yellow', 'green'],
      },
      {
        'questiontext': 'what\'s my favourite tech brand?',
        'answer': ['microsoft', 'amazon', 'apple', 'google'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App'),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.pinkAccent,
              child: Text(
                'Sara, lets see how much do you know me...!',
                style: TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              ),
            ),
            Question(questions[_questionCount]['questiontext']),
            ...(questions[_questionCount]['answer'] as List<String>)
                .map((answerlist) {
              return Answer(questionIndex, answerlist);
            })
          ],
        ),
      ),
    );
  }
}
