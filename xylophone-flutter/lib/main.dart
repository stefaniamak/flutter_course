import 'package:flutter/material.dart';
import 'package:list_english_words/list_english_words.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Center(
              child: Text(list_english_words.first),
            ),
          ),
        ),
      ),
    );
  }
}
