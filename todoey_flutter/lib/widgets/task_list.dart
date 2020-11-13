import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/utilities/list_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ListData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.getList()[index];
            return TaskTile(
              text: task.title,
              isChecked: task.isDone,
              checkboxCallback: (checkBoxState) {
                taskData.isDone(task);
              },
              deleteItem: () {
                taskData.deleteItem(task);
              },
            );
          },
          itemCount: taskData.getList().length,
        );
      },
    );
  }
}
