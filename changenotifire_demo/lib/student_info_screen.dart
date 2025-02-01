import 'dart:developer';

import 'package:changenotifire_demo/student_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StudentInfoScreen extends StatelessWidget {
  const StudentInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log("IN STUDENTSCREEN BUILD");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Student Info",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Provider.of<StudentInfoController>(context).studentName,
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          Text(
            Provider.of<StudentInfoController>(context).rollNo.toString(),
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${Provider.of<StudentInfoController>(context).className}  ",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              Text(
                Provider.of<StudentInfoController>(context).division,
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              log("ON ONTAP");
              Provider.of<StudentInfoController>(context, listen: false)
                  .changeStudDiv(division: "A");
            },
            child: Text("Change Division"),
          ),
          NormalClass(),
        ],
      ),
    );
  }
}

class NormalClass extends StatelessWidget {
  const NormalClass({super.key});

  @override
  Widget build(BuildContext context) {
    log("IN NORMAL CLASS");
    return Text("HELLOW");
  }
}
