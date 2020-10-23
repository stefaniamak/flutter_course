import 'package:flutter/material.dart';
import 'package:quizzler/models/answer.dart';
import 'package:quizzler/quiz_brain.dart';

class ScoreKeeper with ChangeNotifier {
  // List<Icon> score = [Icon(Icons.arrow_forward)
  final QuizBrain _quizBrain = new QuizBrain();

  final List<Answer> _userAnswers = [];

  List<Answer> get answers {
    return _userAnswers;
  }

  void resetGame() {
    _userAnswers.clear();
    notifyListeners();
  }

  void onUserAnswered(bool userAnswer) {
    _userAnswers.add(
        new Answer(question: _quizBrain.getQuestion(), userAnswer: userAnswer));
    notifyListeners();
  }
}
