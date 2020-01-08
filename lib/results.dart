import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resultHandler;

  Result(this.resultScore, this.resultHandler);

  String get reultPhrase {
    var resultText = 'You did it';
    if (resultScore >= 90) {
      resultText = 'Best Score \n 90%+';
    } else if (resultScore >= 80) {
      resultText = 'At least \n 80%+';
    } else if (resultScore >= 70) {
      resultText = 'Not Thaaat Bad \n 70%+';
    }else if (resultScore >= 60) {
      resultText = 'Try harder \n 60%+';
    } else {
      resultText = 'Pathetic \n Bellow 60%';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            reultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
            onPressed: resultHandler,
          ),
        ],
      ),
    );
  }
}
