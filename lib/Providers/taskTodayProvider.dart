import 'package:dieguin_app/Classes/taskWithCheckMarkClass.dart';
import 'package:dieguin_app/presentation/widgets/taskWithCheckMark.dart';
import 'package:flutter/material.dart';

class Tasktodayprovider extends ChangeNotifier {
  List<TaskWithCheckMark> taskWithCheckMarkList = [];
  void addTaskFuntion(TaskWithCheckMark t) {
    taskWithCheckMarkList.add(t);
    notifyListeners();
  }
}
