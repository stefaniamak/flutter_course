import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({@required this.user, @required this.message});

  final String user;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user,
              style: TextStyle(color: Colors.grey[500], fontSize: 11.0),
            ),
            Material(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.lightBlueAccent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
