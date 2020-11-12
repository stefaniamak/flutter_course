import 'package:flutter/material.dart';

String itemTitle;

class AddTaskBottomSheet extends StatelessWidget {
  const AddTaskBottomSheet({this.addItemsToList});

  final Function addItemsToList;

  @override
  Widget build(BuildContext context) {
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
              onPressed: () => addItemsToList(itemTitle),
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
