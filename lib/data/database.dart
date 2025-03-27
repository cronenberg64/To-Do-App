import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // refer to box
  final todo = Hive.box('todo');

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Create a task", false],
      ["Delete a task", false],
    ];
  }

  // load the data from the database
  void loadData() {
    toDoList = todo.get('tasks');
  }

  // update the database
  void updateDataBase() {
    todo.put('tasks', toDoList);
  }
}
