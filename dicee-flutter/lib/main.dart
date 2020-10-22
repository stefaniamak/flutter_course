import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNumb = 1;
  int rightNumb = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              // void callback , like anonymous function
              onPressed: () {
                setState(() {
                  leftNumb = Random().nextInt(6) + 1;
                  print('Left number: $leftNumb');
                });
              },
              child: Image.asset('images/dice$leftNumb.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightNumb = Random().nextInt(6) + 1;
                  print('Right number: $rightNumb');
                });
              },
              child: Image.asset('images/dice$rightNumb.png'),
            ),
          ),
        ],
      ),
    );
  }
}
