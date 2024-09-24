import 'package:dieguin_app/Classes/activityWithPercentClass.dart';
import 'package:dieguin_app/core/constants/app.colors.dart';
import 'package:dieguin_app/presentation/widgets/propjectWhitPercent.dart';
import 'package:flutter/material.dart';

class PercentTaskProvider extends ChangeNotifier {
  List<ProjectWithPercent> activityWithPercentList = [
    ProjectWithPercent(
      activitywithpercentclass: ProjectWithPercentclass(
          task: 'Brandbook for Synthium',
          date: 'Oct, 15',
          percentage: 0.95,
          color: AppColors.lightBlue,
          percentColor: AppColors.boldblue),
    ),
    ProjectWithPercent(
      activitywithpercentclass: ProjectWithPercentclass(
        task: 'Working on the moodboard for optimatech',
        date: 'Oct, 12',
        percentage: 0.17,
        color: AppColors.purple,
        percentColor: AppColors.boldpurple,
      ),
    ),
    ProjectWithPercent(
      activitywithpercentclass: ProjectWithPercentclass(
        task: 'AstraTech research and app redisign',
        date: 'Nov, 28',
        percentage: 0.73,
        color: AppColors.beige,
        percentColor: AppColors.orange,
      ),
    ),
    ProjectWithPercent(
      activitywithpercentclass: ProjectWithPercentclass(
        task: 'Smart Home prototype',
        date: 'Nov, 2',
        percentage: 0.52,
        color: AppColors.lightGreen,
        percentColor: AppColors.boldgreen,
      ),
    ),
  ];

  void addProjectWithPercent(ProjectWithPercent p) {
    activityWithPercentList.add(p);
    notifyListeners();
  }
}
