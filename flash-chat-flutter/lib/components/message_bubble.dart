import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({@required this.user, @required this.message});

  final String user;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              user,
              style: TextStyle(color: Colors.grey[500], fontSize: 11.0),
            ),
            Material(
              elevation: 3.0,
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.lightBlueAccent,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 13.0, vertical: 8.0),
                child: Text(
                  message,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
