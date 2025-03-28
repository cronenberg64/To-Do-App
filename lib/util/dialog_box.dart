import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const DialogBox({
    super.key, 
    required this.controller, 
    required this.onCancel, 
    required this.onSave
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.green[300],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          //get user input
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new task",
            ),
          ),

          // buttons -> save  + cancel
          Row(children: [
            // save button
            MyButton( 
              text: "Save", 
              onPressed: () {}
              ),

            // space between buttons
            SizedBox(width: 10),

            // cancel button
            MyButton(
              text: "Cancel",
              onPressed: () {}
              ),
          ],)
        ]),
        ),
    );
  }
}