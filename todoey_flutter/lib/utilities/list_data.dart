import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class ListData extends ChangeNotifier {
  List<Task> _itemList = [
    Task(title: 'First (1) item', isDone: false),
    Task(title: 'Second (2) item', isDone: false),
    Task(title: 'Third (3) item', isDone: false),
  ];

  UnmodifiableListView<Task> getList() {
    return UnmodifiableListView(_itemList);
  }

  void addTask(String title) {
    _itemList.add(Task(title: title, isDone: false));
  }

  void isDone(Task task) {
    task.done();
    notifyListeners();
  }

  void deleteItem(Task task) {
    _itemList.remove(task);
    notifyListeners();
  }
}
