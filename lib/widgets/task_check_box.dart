import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';

class TaskCheckbox extends StatelessWidget {
  final bool? checkboxState;
  final Function(bool?) toggleCheckboxState;

  const TaskCheckbox(
      {Key? key, this.checkboxState, required this.toggleCheckboxState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: primaryColor,
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}
