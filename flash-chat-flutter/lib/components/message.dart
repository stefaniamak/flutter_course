import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({@required this.user, @required this.message});

  final String user;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(user),
          Text(message),
        ],
      ),
    );
  }
}
