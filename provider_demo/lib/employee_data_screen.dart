import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/employee_controller.dart';

class EmployeeDataScreen extends StatelessWidget {
  const EmployeeDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Employee Data",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Employee name: ${Provider.of<EmployeeController>(context).empName}",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              "Employee Id: ${Provider.of<EmployeeController>(context).empId}",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
