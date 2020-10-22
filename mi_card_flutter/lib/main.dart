import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color _darkMainColor = Colors.white10;
    Color _lightMainColor = Colors.white;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: _darkMainColor,
        body: SafeArea(
          child: Column(
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
                    color: _lightMainColor),
              ),
              Text(
                'Android App Developer',
                style: TextStyle(
                    fontFamily: 'Turret',
                    fontSize: 15.0,
                    color: _lightMainColor,
                    letterSpacing: 2.5),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
                color: _lightMainColor,
                child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    title: Text(
                      '+30 123 456 7890',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 80.0),
                color: _lightMainColor,
                child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    title: Text(
                      'aaa@gmail.com',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
