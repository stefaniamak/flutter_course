import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class ReusableCardWithButtons extends StatefulWidget {
  int number = 0;
  String label = '-';

  ReusableCardWithButtons({this.number, this.label});
  @override
  _ReusableCardWithButtonsState createState() =>
      _ReusableCardWithButtonsState(number: number, label: label);
}

class _ReusableCardWithButtonsState extends State<ReusableCardWithButtons> {
  int number;
  String label;

  _ReusableCardWithButtonsState({this.number, this.label});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      colour: kActiveCardColor,
      childWidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: kLabelStyle,
          ),
          Text(
            number.toString(),
            style: kNumberStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundIconButton(
                icon: FontAwesomeIcons.minus,
                onPressed: () {
                  setState(() {
                    number--;
                  });
                },
              ),
              SizedBox(width: 10.0),
              RoundIconButton(
                icon: FontAwesomeIcons.plus,
                onPressed: () {
                  setState(() {
                    number++;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xFF4C4F5E),
      elevation: 0.0,
    );
  }
}
