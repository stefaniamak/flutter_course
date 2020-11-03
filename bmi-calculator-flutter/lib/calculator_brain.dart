import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain({@required this.height, @required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getDescription() {
    if (_bmi >= 25) {
      return 'Come on! You can manage to get back to what\'s considered healthier for your body.';
    } else if (_bmi > 18.5) {
      return 'That looks pretty normal to me. Keep up what you\'re doing my friend.';
    } else {
      return 'Heeeeeeeeeyyyyyyyy, you are quite lower than what is considered normal for your size.';
    }
  }
}
