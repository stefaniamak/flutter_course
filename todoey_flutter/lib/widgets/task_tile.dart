import 'package:flutter/material.dart';

class ListItemWithBox extends StatefulWidget {
  const ListItemWithBox({this.text});

  final String text;

  @override
  _ListItemWithBoxState createState() => _ListItemWithBoxState();
}

class _ListItemWithBoxState extends State<ListItemWithBox> {
  bool isChecked = false;

  void checkBoxCallback(bool checkboxState) {
    setState(() {
      isChecked = checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.text,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
        isChecked: isChecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool isChecked;
  final Function onChanged;

  const TaskCheckBox({this.isChecked, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: onChanged,
    );
  }
}
