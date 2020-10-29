import 'package:flutter/material.dart';
import 'models/answer.dart';

class ScoreList with ChangeNotifier {
  //ScoreList();
  ScrollController _scrollController = ScrollController();
  bool _listNotEmpty = true;

  _scrollToBottom() {
    if (_listNotEmpty) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    }
  }

  ListView scoreListUI(List<Answer> answers) {
    return ListView(
      scrollDirection: Axis.horizontal,
      controller: _scrollController,
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
    _scrollToBottom();
    notifyListeners();
    _listNotEmpty = true;
  }

  void restartList() {
    _listNotEmpty = false;
    refreshList();
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
