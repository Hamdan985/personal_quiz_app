import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  void test() {}

  final int questionIndex;

  Answer(this.questionIndex);

  var answers = [
    {
      1: ['1a', '1b', '1c', '1d']
    },
    {
      2: ['2a', '2b', '2c', '2d']
    },
    {
      3: ['3a', '3b', '3c', '3d']
    },
    {
      4: ['4a', '4b', '4c', '4d']
    },
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Card(
          child: RaisedButton(
            child: Text(answers[0][1][1]),
            onPressed: test,
          ),
          elevation: 6,
          color: Colors.blueGrey,
        )
      ],
    );
  }
}
