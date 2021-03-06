import 'package:flutter/material.dart';
import 'package:quizzler/models/answer.dart';
import 'package:quizzler/models/question.dart';
import 'package:quizzler/quiz_brain.dart';
import 'package:quizzler/score_keeper.dart';
import 'package:quizzler/score_list_ui.dart';
import 'score_keeper.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final QuizBrain _quizBrain = QuizBrain();
  final ScoreKeeper _scoreKeeper = ScoreKeeper();
  final ScoreList _scoreList = ScoreList();
  // ScrollController _scrollController;
  // bool _listNotEmpty = true;

  // scrollToBottom() {
  //   _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
  // }

  void _pointHandler(bool userAnswer) {
    _addPoints(userAnswer);
    _quizBrain.nextQuestion(context, _scoreKeeper);
    _scoreList.refreshList();
    //_scrollToBottom();
  }

  void _addPoints(bool userAnswer) => _scoreKeeper.onUserAnswered(userAnswer);

  @override
  void initState() {
    super.initState();

    // WidgetsBinding.instance.addPostFrameCallback((_) => scrollToBottom());
    //
    // _scrollController = ScrollController()
    //   ..addListener(() {
    //     print('listener test score');
    //     setState(() {
    //       //_scrollToBottom();
    //     });
    //   });

    // _scoreKeeper.addListener(() {
    //   setState(() {});
    // });

    _quizBrain.addListener(() {
      setState(() {});
    });

    _scoreList.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                _quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                setState(() {
                  _pointHandler(true);
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                setState(() {
                  _pointHandler(false);
                });
              },
            ),
          ),
        ),
        Container(
            height: 30, child: _scoreList.scoreListUI(_scoreKeeper.answers)),
        //_scoreList.scoreListUI(_scoreKeeper.answers)),
      ],
    );
  }
}
// _scoreList.scoreListUI(_scoreKeeper.answers))
/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
