import 'package:flutter/material.dart';
import 'package:flutter_todoey/screens/add_tasks_screen.dart';
import '../models/task.dart';
import '../widgets/tasks_list.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todoey/models/task_data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  // addTaskCallback: (newTaskTitle){
                  //   // setState(() {
                  //   //   tasks.add(Task(name: newTaskTitle));
                  //   // });
                  //   Navigator.pop(context);
                  // }
                child: AddTasksScreen(),
              ),
            ),
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.h, left: 30.w, bottom: 30.h ,right: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.h,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.h,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  //${tasks.length}
                  '${Provider.of<TaskData>(context).getCount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                  top: 60.h, left: 30.w, bottom: 30.h, right: 30.w),
              height: 300.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.h),
                      topRight: Radius.circular(20.h))),
              child: TasksList(),//tasks: tasks
            ),
          ),
        ],
      ),
    );
  }
}
