import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white10,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/stefania_mak_icon.png'),
              ),
              Text(
                'Stefania Mak',
                style: TextStyle(
                    fontFamily: 'Grenze',
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'Android App Developer',
                style: TextStyle(
                    fontFamily: 'Turret', fontSize: 15.0, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
