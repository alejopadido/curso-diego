import 'package:dieguin_app/Classes/taskWithCheckMarkClass.dart';
import 'package:dieguin_app/presentation/widgets/taskWithCheckMark.dart';
import 'package:flutter/material.dart';

class Tasktodayprovider extends ChangeNotifier {
  List<TaskWithCheckMark> taskWithCheckMarkList = [
    TaskWithCheckMark(
      taskwithcheckmarkclass: Taskwithcheckmarkclass(
          title: 'Spreen Meeatin',
          toDo:
              'es una prueba a ver si ese cabeza de zunga me da 10 min para explicarme git, he tenido muchos problemas tratando de hacer un puto commit'),
    ),
    TaskWithCheckMark(
      taskwithcheckmarkclass: Taskwithcheckmarkclass(
          title: 'to do in Bogota',
          toDo:
              'Welcome to the sprawling metropolis of Bogota, a melting pot of towering skyscrapers'),
    ),
    TaskWithCheckMark(
        taskwithcheckmarkclass: Taskwithcheckmarkclass(
            title: 'Iconic Plaza Bolivar',
            toDo:
                'The heart of the historic center of Bogota is the Plaza Bolivar, surrounded by some of the most')),
  ];
}
