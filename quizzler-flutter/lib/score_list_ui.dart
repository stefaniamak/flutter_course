import 'package:flutter/material.dart';
import 'models/answer.dart';

class ScoreList with ChangeNotifier {
  //ScoreList();
  ScrollController _scrollController = ScrollController();
  bool _listNotEmpty = false;

  scrollToBottom() {
    if (_listNotEmpty) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      // print('scrolling in the method');
    }
    // print('no scrolling');
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

  // Widget listController(List<Answer> answers) {
  //   ListView listView = scoreListUI(answers);
  //   _scrollToBottom();
  //   return listView;
  // }

  void refreshList() {
    scrollToBottom();
    _listNotEmpty = true;
    notifyListeners();
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
