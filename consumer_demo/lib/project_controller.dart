import 'package:flutter/material.dart';

class ProjectController extends ChangeNotifier {
  String projectDomen;
  String devType;

  ProjectController({required this.devType, required this.projectDomen});

  void changeData({required String projectDomen, required String devType}) {
    this.devType = devType;
    this.projectDomen = projectDomen;
    notifyListeners();
  }
}
