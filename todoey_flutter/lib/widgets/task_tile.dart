import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  // const ListItemWithBox({this.text});

  final String text;
  final Function checkboxCallback;
  final Function deleteItem;
  final bool isChecked;

  const TaskTile(
      {this.text, this.checkboxCallback, this.deleteItem, this.isChecked});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteItem,
      title: Text(
        text,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
