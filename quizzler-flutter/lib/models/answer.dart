import 'package:quizzler/models/question.dart';

class Answer {
  final Question question;
  final bool userAnswer;

  Answer({this.question, this.userAnswer});

  bool isCorrect() {
    return this.question.answer == this.userAnswer;
  }
}
