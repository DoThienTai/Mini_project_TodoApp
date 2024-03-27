import 'package:flutter/material.dart';
import 'task.dart';
class TaskData extends ChangeNotifier {

  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Homework?'),
    Task(name: 'Buy eggs'),
  ];

  int get getCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteData(Task data) {
    tasks.remove(data);
    notifyListeners();
  }
}