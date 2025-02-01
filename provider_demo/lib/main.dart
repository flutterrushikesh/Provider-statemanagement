import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/employee_controller.dart';
import 'package:provider_demo/employee_data_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => EmployeeController(
        empName: "Ashish",
        empId: 12,
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: EmployeeDataScreen(),
      ),
    );
  }
}
