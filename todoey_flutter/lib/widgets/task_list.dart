import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

List<Task> itemList = [
  Task(title: 'First (1) item', isDone: false),
  Task(title: 'Second (2) item', isDone: false),
  Task(title: 'Third (3) item', isDone: false),
];

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          text: itemList[index].title,
          isChecked: itemList[index].isDone,
          onPressed: (value) {
            setState(() {
              itemList[index].isDone = value;
            });
          },
        );
      },
      itemCount: itemList.length,
    );
  }
}
