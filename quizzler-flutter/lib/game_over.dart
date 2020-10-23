import 'package:flutter/cupertino.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class GameOver {
  void gameOver(BuildContext context) {
    Alert(context: context, title: 'End of quiz!', desc: 'aaaaa').show();
  }
}
