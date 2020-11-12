import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/utilities/list_data.dart';

class TaskList extends StatelessWidget {
  final List listData;
  final Function updateList;

  const TaskList({this.listData, this.updateList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          text: listData[index].title,
          isChecked: listData[index].isDone,
          checkboxCallback: updateList,
        );
      },
      itemCount: listData.length,
    );
  }
}
