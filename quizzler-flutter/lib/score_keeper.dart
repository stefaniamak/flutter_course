import 'package:flutter/material.dart';

class ScoreKeeper {
  List<Icon> score = [Icon(Icons.arrow_forward)];

  void resetIcons() {
    score = [];
  }
}
