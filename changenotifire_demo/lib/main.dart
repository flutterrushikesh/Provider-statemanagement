import 'package:changenotifire_demo/student_info_controller.dart';
import 'package:changenotifire_demo/student_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StudentInfoController(
        division: "B",
        rollNo: 53,
        studentName: "Ashish",
        className: 10,
      ),
      child: MaterialApp(
        home: StudentInfoScreen(),
      ),
    );
  }
}
