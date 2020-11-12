import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_list.dart';
import 'package:todoey_flutter/screens/add_task_bottom_sheet.dart';
import 'package:todoey_flutter/utilities/list_data.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  ListData listData = ListData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: AddTaskBottomSheet(
                addItemsToList: (newItemTitle) {
                  print(newItemTitle);
                  setState(() {
                    listData.addItem(newItemTitle);
                  });
                },
              ),
            ),
          );
        },
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 50.0, top: 80.0, bottom: 60.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 60.0,
                    color: Colors.lightBlue,
                  ),
                  backgroundColor: Colors.white,
                  radius: 40.0,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    fontSize: 60.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '[Number] Tasks',
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30.0))),
              child: TaskList(
                listData: listData.getList(),
                updateList: (index) {
                  setState(() {
                    listData.getList()[index].done();
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
