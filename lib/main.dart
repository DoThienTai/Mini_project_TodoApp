import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task_data.dart';
import 'package:flutter_todoey/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp(const MyApp());
}
//complete
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(406, 888),
      builder: (context, child) {
        return ChangeNotifierProvider(
          create: (BuildContext context) =>TaskData(),
          child: MaterialApp(
            home: TasksScreen(),
          ),
        );
      },
    );
  }
}
