import 'package:flutter/material.dart';
import 'task_check_box.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task 1',
        style: TextStyle(
          decoration: isChecked == true ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        toggleCheckboxState: (bool? checkboxState) {
          setState(() {
            isChecked = checkboxState;
          });
        },
      ),
    );
  }
}
