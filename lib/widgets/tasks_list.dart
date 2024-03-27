import 'package:flutter/material.dart';
import 'package:flutter_todoey/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todoey/models/task_data.dart';
import '../models/task.dart';

class TasksList extends StatelessWidget {
  // late final List<Task> tasks;
  // TasksList({required this.tasks});
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              //widget.tasks[index].isDone
              isChecked: task.isDone,
              taskTitle: task.name,
              checkboxCallback: (checkboxState) {
                // setState(() {
                //   widget.tasks[index].toggleDone();
                // });
                taskData.updateTask(task);
              },
              longPressCallback: (){
                taskData.deleteData(task);
              },
            );
          },
          itemCount: taskData.getCount,
        );
      },
    );
  }
}
