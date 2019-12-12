import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void testFunction() {
    print('button pressed');
    setState(() {
      questionIndex++;
    });
  }

  var questions = [
    'Question 1',
    'Question 2',
    'Question 3',
    'Question 4',
    'Question 5',
  ];

  int questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personal Quiz App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('increment 1'),
                  onPressed: testFunction,
                  color: Colors.lightGreen,
                ),
                RaisedButton(
                  child: Text('increment 2'),
                  onPressed: testFunction,
                  color: Colors.lightGreen,
                ),
                RaisedButton(
                  child: Text('increment 3'),
                  onPressed: testFunction,
                  color: Colors.lightGreen,
                ),
                RaisedButton(
                  child: Text('increment 4'),
                  onPressed: testFunction,
                  color: Colors.lightGreen,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
