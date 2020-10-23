import 'package:flutter/cupertino.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:quizzler/score_keeper.dart';
import 'quiz_brain.dart';

class GameOver {
  static QuizBrain quizBrain = new QuizBrain();
  static ScoreKeeper _scoreKeeper = new ScoreKeeper();

  static void gameOver(BuildContext context) {
    Alert(
        context: context,
        title: '- End of quiz -',
        desc: 'Good job fella!',
        buttons: [
          DialogButton(
            child: Text('Start over'),
            onPressed: () {
              endGame();
              Navigator.of(context).pop();
            },
          )
        ]).show();
  }

  static void endGame() {
    quizBrain.resetAnswers();
    //_scoreKeeper.resetIcons();
  }
}
