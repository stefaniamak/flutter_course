import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Text('Your Results')),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              childWidget: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'simple textaaaaa',
                    style: kGreenLabel,
                  ),
                  Text(
                    '56.2',
                    style: kResultNumber,
                  ),
                  Text(
                    'simple text',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
