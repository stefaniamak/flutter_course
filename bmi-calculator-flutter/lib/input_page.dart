import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = inactiveCardColor;
  Color femaleColor = inactiveCardColor;

  // male = 1, female = 2
  void updateColor(Gender gender) {
    if (gender == Gender.male) {
      if (maleColor == activeCardColor) {
        maleColor = inactiveCardColor;
      } else {
        maleColor = activeCardColor;
        femaleColor = inactiveCardColor;
      }
    } else {
      if (femaleColor == activeCardColor) {
        femaleColor = inactiveCardColor;
      } else {
        femaleColor = activeCardColor;
        maleColor = inactiveCardColor;
      }
    }
  }

  // void imageSwitch(Color buttonColorOne, Color buttonColorTwo){
  //   if (buttonColorOne == activeCardColor) {
  //     buttonColorOne = inactiveCardColor;
  //   } else {
  //     buttonColorOne = activeCardColor;
  //     buttonColorTwo = inactiveCardColor;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    child: ReusableCard(
                      colour: maleColor,
                      childWidget: CardContent(
                          icon: FontAwesomeIcons.mars, labelText: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleColor,
                      childWidget: CardContent(
                          icon: FontAwesomeIcons.venus, labelText: 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
