import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/utilities/list_data.dart';

class TaskList extends StatefulWidget {
  final List listData;

  const TaskList({this.listData});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          text: widget.listData[index].title,
          isChecked: widget.listData[index].isDone,
          checkboxCallback: (checkBoxState) {
            setState(() {
              widget.listData[index].done();
            });
          },
        );
      },
      itemCount: widget.listData.length,
    );
  }
}
