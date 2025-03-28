import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool isDone;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteFunction;

  const ToDoTile({
      super.key,
      required this.taskName,
      required this.isDone,
      required this.onChanged,
      required this.deleteFunction
      });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
        child: Slidable(
          endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                onPressed: deleteFunction,
                icon: Icons.delete,
                backgroundColor: Colors.red.shade300,
                borderRadius: BorderRadius.circular(10),
                )
            ],
          ),
          child: Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.green[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                // checkbox
                Checkbox(
                  value: isDone,
                  onChanged: onChanged,
                  activeColor: Colors.black,
                ),
          
                // task name
                Text(
                  taskName,
                  // if isDone is true, then add line through the text else none
                  style: TextStyle(decoration: isDone ? TextDecoration.lineThrough : TextDecoration.none),
                  )
              ],
            ),
          ),
        ));
  }
}
