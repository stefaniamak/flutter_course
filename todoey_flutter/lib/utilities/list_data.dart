import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class ListData {
  List<Task> itemList = [
    Task(title: 'First (1) item', isDone: false),
    Task(title: 'Second (2) item', isDone: false),
    Task(title: 'Third (3) item', isDone: false),
  ];
  void addItem(String title) {
    itemList.add(Task(title: title));
  }

  List<Task> getList() {
    return itemList;
  }
}
