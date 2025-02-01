import 'package:consumer_demo/employee_controller.dart';
import 'package:consumer_demo/employee_data_screen.dart';
import 'package:consumer_demo/project_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => EmployeeController(
            empId: "21",
            empName: "Ashish",
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => ProjectController(
            devType: "Flutter Developer",
            projectDomen: "Health Care",
          ),
        ),
      ],
      child: MaterialApp(
        home: EmployeeDataScreen(),
      ),
    );
  }
}
