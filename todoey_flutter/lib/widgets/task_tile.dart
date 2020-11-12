import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  // const ListItemWithBox({this.text});

  final String text;
  final Function onPressed;
  final bool isChecked;

  const TaskTile({this.text, this.onPressed, this.isChecked});

  void checkBoxCallback(bool checkboxState) {}

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: onPressed,
      ),
    );
  }
}
