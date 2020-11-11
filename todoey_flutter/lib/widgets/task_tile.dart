import 'package:flutter/material.dart';

class ListItemWithBox extends StatelessWidget {
  const ListItemWithBox({this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      trailing: Checkbox(value: false),
    );
  }
}
