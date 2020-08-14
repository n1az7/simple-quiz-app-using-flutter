import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(FirstApp());

class FirstApp extends StatefulWidget {
  @override
  _FirstAppState createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  var _totalScore = 0;
  int _questionCount = 0;

  final _questions = const [
    {
      'questiontext': 'what\'s my favourite animal?',
      'answer': [
        {'text': 'Dog', 'score': 5},
        {'text': 'Cat', 'score': 10},
        {'text': 'Tiger', 'score': 15},
        {'text': 'Lion', 'score': 20}
      ],
    },
    {
      'questiontext': 'What\'s my favourite Color?',
      'answer': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 10},
        {'text': 'White', 'score': 15},
        {'text': 'Blue', 'score': 20}
      ],
    },
    {
      'questiontext': 'What\'s my favourite Tech Company?',
      'answer': [
        {'text': 'Apple', 'score': 5},
        {'text': 'Microsoft', 'score': 10},
        {'text': 'Amazon', 'score': 15},
        {'text': 'Google', 'score': 20}
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionCount = 0;
    });
  }

  void _questionIndex(int score) {
    _totalScore += score;
    setState(() {
      _questionCount = _questionCount + 1;
    });
    print(_questionCount);
    if (_questionCount < _questions.length) {
      print('we have more questions');
    } else {
      print('questions over!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App'),
        ),
        body: _questionCount < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                questioncount: _questionCount,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
