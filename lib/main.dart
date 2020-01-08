import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/results.dart';

import './quiz.dart';
import './results.dart';

//void main(){
//runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s my favourite song in this list?',
      'answers': [
        {'text': 'Katanisha', 'score': 2},
        {'text': 'Kimangoto', 'score': 8},
        {'text': 'Sesa', 'score': 5},
        {'text': 'Thao', 'score': 10},
      ]
    },
    {
      'questionText': 'Who\'s my favourite artist?',
      'answers': [
        {'text': 'Seska', 'score': 8},
        {'text': 'Nellythegoon', 'score': 10},
        {'text': 'Xray', 'score': 2},
        {'text': 'Zzero', 'score': 5},
      ]
      },
      {
      'questionText': 'Who\'s my favourite female Kenyan artist',
      'answers': [
        {'text': 'Ssaru', 'score': 10},
        {'text': 'Shay Diva', 'score': 8},
        {'text': 'Muthoni Drama Queen', 'score': 5},
        {'text': 'Femi One', 'score': 2},
      ]
      },
      {
      'questionText': 'What\'s my favourite movie?',
      'answers': [
        {'text': 'Inception', 'score': 10},
        {'text': 'Tall Girl', 'score': 2},
        {'text': 'Predestination', 'score': 5},
        {'text': 'Batman vs Superman', 'score': 8},
      ]
    },
    {
      'questionText': 'What\'s my favourite song in this list?',
      'answers': [
        {'text': 'Soco', 'score': 2},
        {'text': 'Fes ka fe bang', 'score': 5},
        {'text': 'Risky', 'score': 10},
        {'text': 'Gheto Love', 'score': 8},
      ]
    },
    {
      'questionText': 'Who\'s my favourite artist?',
      'answers': [
        {'text': 'Bobby Shmurder', 'score': 2},
        {'text': 'Drake', 'score': 5},
        {'text': '2Chainz', 'score': 10},
        {'text': 'Migos', 'score': 8},
      ]
    },
    {
      'questionText': 'What\s my favourite song Calture-1 album?',
      'answers': [
        {'text': 'Bad and Boujee', 'score': 2},
        {'text': 'Slippery', 'score': 10},
        {'text': 'Deadz', 'score': 5},
        {'text': 'T-Shirt', 'score': 8},
      ]
    },
    {
      'questionText': 'What\s my favourite song Calture-2 album?',
      'answers': [
        {'text': 'Stir Fry', 'score': 5},
        {'text': 'Narcos', 'score': 8},
        {'text': 'Walk it Talk it', 'score': 2},
        {'text': 'Open It up', 'score': 10},
      ]
    },
    {
      'questionText': 'What\s my favourite song from DaBaby?',
      'answers': [
        {'text': '21', 'score': 8},
        {'text': 'Suge', 'score': 5},
        {'text': 'Baby on Baby', 'score': 10},
        {'text': 'Off the Rip', 'score': 2},
      ]
    },
    {
      'questionText': 'What\s my favourite song from Cardi from this list?',
      'answers': [
        {'text': 'Bodack Yellow', 'score': 2},
        {'text': 'I like it', 'score': 10},
        {'text': 'Bartier Cadi', 'score': 5},
        {'text': 'Drip', 'score': 8},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalscore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  void _answerQuestion( int score) {

    _totalscore = _totalscore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('We Have more Questions');
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Colors.indigo,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalscore, _resetQuiz),
      ),
    );
  }
}
