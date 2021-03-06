import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF111428),
        accentColor: Color(0xFFEB1555),
        scaffoldBackgroundColor: Color(0xFF0A0B22),
      ),
      //home: InputPage(),
      initialRoute: '/input',
      routes: {
        '/input': (context) => InputPage(),
        //'/result': (context) => ResultsPage(result: '',bmi: '',description: '',), // ToDo: see how can i add the parameters here
      },
    );
  }
}
