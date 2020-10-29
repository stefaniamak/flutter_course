import 'package:flutter/cupertino.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:quizzler/score_keeper.dart';
import 'quiz_brain.dart';
import 'score_list_ui.dart';

class GameOver {
  static QuizBrain _quizBrain = new QuizBrain();
  //static ScoreKeeper _scoreKeeper = new ScoreKeeper();
  static ScoreList _scoreList = new ScoreList();

  static void gameOver(BuildContext context, ScoreKeeper scoreKeeper) {
    Alert(
        context: context,
        title: '- End of quiz -',
        desc: 'Good job fella!',
        buttons: [
          DialogButton(
            child: Text('Start over'),
            onPressed: () {
              endGame(scoreKeeper);
              Navigator.of(context).pop();
            },
          )
        ]).show();
  }

  static void endGame(ScoreKeeper scoreKeeper) {
    _quizBrain.resetAnswers();
    scoreKeeper.resetGame();
    _scoreList.refreshList();
    //_scoreKeeper.resetIcons();
  }
}
