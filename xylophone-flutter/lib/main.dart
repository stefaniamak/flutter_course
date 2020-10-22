import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  playSound(1);
                },
                child: Center(child: Icon(Icons.play_arrow)),
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  playSound(2);
                },
                child: Center(child: Icon(Icons.play_arrow)),
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  playSound(3);
                },
                child: Center(child: Icon(Icons.play_arrow)),
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  playSound(4);
                },
                child: Center(child: Icon(Icons.play_arrow)),
              ),
              FlatButton(
                color: Colors.greenAccent,
                onPressed: () {
                  playSound(5);
                },
                child: Center(child: Icon(Icons.play_arrow)),
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  playSound(6);
                },
                child: Center(child: Icon(Icons.play_arrow)),
              ),
              FlatButton(
                color: Colors.deepPurpleAccent,
                onPressed: () {
                  playSound(7);
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
