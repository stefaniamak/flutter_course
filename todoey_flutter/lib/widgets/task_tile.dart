import 'package:flutter/material.dart';

class ListItemWithBox extends StatelessWidget {
  const ListItemWithBox({this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      trailing: TaskCheckBox(),
    );
  }
}

class TaskCheckBox extends StatefulWidget {
  @override
  _TaskCheckBoxState createState() => _TaskCheckBoxState();
}

class _TaskCheckBoxState extends State<TaskCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = value;
        });
      },
    );
  }
}
