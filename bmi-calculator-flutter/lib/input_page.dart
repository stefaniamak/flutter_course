import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    childWidget: CardContent(
                        icon: FontAwesomeIcons.mars, labelText: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    childWidget: CardContent(
                        icon: FontAwesomeIcons.venus, labelText: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: kLabelStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    //textBaseline: TextBaseline.alphabetic, // This seems to not be needed anymore
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelStyle,
                      )
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 100.0,
                    max: 250.0,
                    activeColor: kBottomContainerColor,
                    inactiveColor: kInactiveBar,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: kActiveCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: kActiveCardColor),
                ),
              ],
            ),
          ),
          Container(
            height: kBottomContainerHeight,
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
