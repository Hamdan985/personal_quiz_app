import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final int questionIndex;

  Question(this.questionIndex);

  var questions = [
    'Question 1',
    'Question 2',
    'Question 3',
    'Question 4',
    'Question 5',
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 50,
          color: Colors.tealAccent,
          child: Center(
            child: Card(
              child: Text(
                questions[questionIndex],
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.tealAccent,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
