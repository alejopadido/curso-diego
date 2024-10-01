import 'package:dieguin_app/Classes/projectWithPercentclass.dart';
import 'package:dieguin_app/core/constants/app.colors.dart';
import 'package:dieguin_app/presentation/widgets/propjectWhitPercent.dart';
import 'package:flutter/material.dart';

class PercentTaskProvider extends ChangeNotifier {
  List<ProjectWithPercent> activityWithPercentList = [
    ProjectWithPercent(
        activitywithpercentclass: ProjectWithPercentclass(
            task: 'Primer Proyecto',
            date: '20 Oct, 2024',
            color: AppColors.lightBlue,
            percentColor: AppColors.boldblue,
            percentage: 0))
  ];

  void addProjectWithPercent(ProjectWithPercent p) {
    activityWithPercentList.add(p);
    notifyListeners();
  }

  void deleteProjectWithPercent(ProjectWithPercent p) {}
}
