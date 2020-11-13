import 'package:flutter/material.dart';
import 'package:todoey_flutter/utilities/list_data.dart';
import 'package:provider/provider.dart';

class AddTaskBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String itemTitle;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 20.0,
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (fieldValue) {
                itemTitle = fieldValue;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                print(Provider.of<ListData>(context, listen: false).getList());
                if (itemTitle != null) {
                  Provider.of<ListData>(context, listen: false)
                      .addTask(itemTitle);
                }
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
