import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  String label;
  Function onTap;

  BottomButton({this.label, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Text(
              label,
              style: kLargeButtonTextStyle,
            ),
          ),
        ),
        height: kBottomContainerHeight,
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
      ),
    );
  }
}
