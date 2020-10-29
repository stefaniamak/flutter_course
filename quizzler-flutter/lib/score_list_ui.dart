import 'package:flutter/material.dart';
import 'models/answer.dart';

class ScoreList with ChangeNotifier {
  //ScoreList();

  ListView scoreListUI(List<Answer> answers) {
    return ListView(
      scrollDirection: Axis.horizontal,
      // [List].map returns Iterable
      children: answers.map((answer) {
        if (answer.isCorrect()) {
          return Icon(Icons.check, color: Colors.green);
        } else {
          return Icon(Icons.close, color: Colors.red);
        }
      }).toList(),
    );
  }

  void refreshList() {
    notifyListeners();
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     height: 30,
  //     child: ListView(
  //       scrollDirection: Axis.horizontal,
  //       // [List].map returns Iterable
  //       children: _scoreKeeper.answers.map((answer) {
  //         if (answer.isCorrect()) {
  //           return Icon(Icons.check, color: Colors.green);
  //         } else {
  //           return Icon(Icons.close, color: Colors.red);
  //         }
  //       }).toList(),
  //     ),
  //   );
  // }
}
