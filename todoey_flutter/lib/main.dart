import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/utilities/list_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ListData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
