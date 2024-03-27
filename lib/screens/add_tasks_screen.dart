import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todoey/models/task_data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddTasksScreen extends StatelessWidget {
  // late final Function addTaskCallback;
  // AddTasksScreen({required this.addTaskCallback});
  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding:
            EdgeInsets.only(top: 60.h, left: 40.w, bottom: 30.h, right: 40.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.h),
            topRight: Radius.circular(20.h),
          ),
        ),
        child: Column(
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.sp,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
              ),
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                // addTaskCallback(newTaskTitle);
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
