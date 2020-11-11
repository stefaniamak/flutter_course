import 'package:flutter/material.dart';
import 'task_tile.dart';

const List<ListItemWithBox> itemList = [
  ListItemWithBox(text: 'First (1) item'),
  ListItemWithBox(text: 'Second (2) item'),
  ListItemWithBox(text: 'Third (3) item'),
];

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: itemList,
    );
  }
}
