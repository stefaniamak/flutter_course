import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final player = AudioCache();
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  player.play('note1.wav');
                },
                child: Center(child: Icon(Icons.play_arrow)),
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  player.play('note2.wav');
                },
                child: Center(child: Icon(Icons.play_arrow)),
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  player.play('note3.wav');
                },
                child: Center(child: Icon(Icons.play_arrow)),
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  player.play('note4.wav');
                },
                child: Center(child: Icon(Icons.play_arrow)),
              ),
              FlatButton(
                color: Colors.greenAccent,
                onPressed: () {
                  player.play('note5.wav');
                },
                child: Center(child: Icon(Icons.play_arrow)),
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  player.play('note6.wav');
                },
                child: Center(child: Icon(Icons.play_arrow)),
              ),
              FlatButton(
                color: Colors.deepPurpleAccent,
                onPressed: () {
                  player.play('note7.wav');
                },
                child: Center(child: Icon(Icons.play_arrow)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
