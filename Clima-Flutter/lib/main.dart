import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';
import 'package:clima/services/location.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      // home: Location(),
      home: LoadingScreen(),
    );
  }
}
