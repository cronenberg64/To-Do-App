import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {

  final String taskName;
  final bool isDone;
  final Function(bool?)? onChanged;

  const TodoTile({
    super.key, 
    required this.taskName, 
    required this.isDone, 
    this.onChanged
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            // checkbox
            Checkbox(value: isDone, onChanged: onChanged),
          
            // task name
            Text(taskName)],
        ),
        decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(10),
      ),
    ));
  }
}