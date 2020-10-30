import 'package:flutter/material.dart';

TextStyle labelStyle = TextStyle(
  fontSize: 15.0,
  color: Color(0xFF8D8E98),
);

class CardContent extends StatelessWidget {
  final IconData icon;
  final String labelText;

  CardContent({@required this.icon, @required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 55.0),
            SizedBox(height: 15.0),
            Text(
              labelText,
              style: labelStyle,
            ),
          ],
        ),
      ),
    );
  }
}
