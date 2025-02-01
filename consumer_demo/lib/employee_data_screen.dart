import 'dart:developer';

import 'package:consumer_demo/employee_controller.dart';
import 'package:consumer_demo/project_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmployeeDataScreen extends StatelessWidget {
  const EmployeeDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Employee Data",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              Provider.of<EmployeeController>(context).empName,
              style: TextStyle(fontSize: 22),
            ),
            Text(
              Provider.of<EmployeeController>(context).empId,
              style: TextStyle(fontSize: 22),
            ),
            Consumer(builder: (context, projectController, child) {
              log("IN CONSUMER BUILD");
              return Column(
                children: [
                  Text(
                    Provider.of<ProjectController>(context).projectDomen,
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    Provider.of<ProjectController>(context).devType,
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              );
            }),
            ElevatedButton(
              onPressed: () {
                Provider.of<ProjectController>(context, listen: false)
                    .changeData(
                        projectDomen: "E-Commerce",
                        devType: "Back-end Developer");
              },
              child: Text("Check Project Data"),
            ),
          ],
        ),
      ),
    );
  }
}
