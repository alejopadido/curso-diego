import 'dart:ui';

import 'package:dieguin_app/presentation/widgets/taskWithCheckMark.dart';

class ProjectWithPercentclass {
  String task;
  String date;
  String? description;
  double percentage;
  Color color;
  Color percentColor;
  List<TaskWithCheckMark>? tasksListOfThisProject = [];
  ProjectWithPercentclass({
    required this.task,
    required this.date,
    required this.color,
    required this.percentColor,
    required this.percentage,
    this.tasksListOfThisProject,
  });

  void addTask(TaskWithCheckMark t) {
    tasksListOfThisProject?.add(t);
  }
}
