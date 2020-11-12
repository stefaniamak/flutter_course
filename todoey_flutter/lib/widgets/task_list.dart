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
            return TaskTile(
              text: taskData.getList()[index].title,
              isChecked: taskData.getList()[index].isDone,
              checkboxCallback: (checkBoxState) {
                // setState(() {
                //   taskData.getList()[index].done();
                // });
              },
            );
          },
          itemCount: taskData.getList().length,
        );
      },
    );
  }
}
