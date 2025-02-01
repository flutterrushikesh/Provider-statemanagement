import 'package:flutter/material.dart';

class StudentInfoController extends ChangeNotifier {
  String studentName;
  int rollNo;
  String division;
  int className;

  StudentInfoController({
    required this.division,
    required this.rollNo,
    required this.className,
    required this.studentName,
  });

  void changeStudDiv({required String division}) {
    this.division = division;
    notifyListeners();
  }
}
