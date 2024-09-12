import 'package:dieguin_app/core/constants/constants.dart';
import 'package:dieguin_app/presentation/widgets/calendar.dart';
import 'package:dieguin_app/presentation/widgets/new_task.dart';
import 'package:dieguin_app/presentation/widgets/task_List.dart';
import 'package:dieguin_app/presentation/widgets/task_percent.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  static const List<TaskPercent> tasks = [
    TaskPercent(
        task: 'Brandbook for Synthium',
        date: 'Oct, 15',
        percentage: 0.95,
        color: AppColors.lightBlue,
        percentColor: AppColors.boldblue),
    TaskPercent(
      task: 'Working on the moodboard for optimatech',
      date: 'Oct, 12',
      percentage: 0.17,
      color: AppColors.purple,
      percentColor: AppColors.boldpurple,
    ),
    TaskPercent(
      task: 'AstraTech research and app redisign',
      date: 'Nov, 28',
      percentage: 0.73,
      color: AppColors.beige,
      percentColor: AppColors.orange,
    ),
    TaskPercent(
      task: 'Smart Home prototype',
      date: 'Nov, 2',
      percentage: 0.52,
      color: AppColors.lightGreen,
      percentColor: AppColors.boldgreen,
    ),
  ];
  static const List<TaskList> tasksList = [
    TaskList(
        title: 'Spreen Meeatin',
        toDo:
            'es una prueba a ver si ese cabeza de zunga me da 10 min para explicarme git, he tenido muchos problemas tratando de hacer un puto commit'),
    TaskList(
        title: 'to do in Bogota',
        toDo:
            'Welcome to the sprawling metropolis of Bogota, a melting pot of towering skyscrapers'),
    TaskList(
        title: 'Iconic Plaza Bolivar',
        toDo:
            'The heart of the historic center of Bogota is the Plaza Bolivar, surrounded by some of the most')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: ListView(
              children: [
                //MY TASKS, BUSCAR Y NOTIFICAR
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
                      child: Text(
                        'My tasks',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: const Row(
                          children: [
                            Icon(
                              Icons.search_rounded,
                              size: 30,
                            ),
                            Icon(
                              Icons.notifications,
                              size: 30,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                //DIAS DE LA SEMANA
                SizedBox(
                  height: 85,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      DateTime dayTime =
                          DateTime.now().add(Duration(days: index));
                      return Date(day: dayTime);
                    },
                    itemCount: 8,
                  ),
                ),

                const SizedBox(height: 20),
                //GRIDVIEW.BUILDER
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            // mainAxisExtent: 3,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8),
                    itemBuilder: (_, int index) {
                      return tasks[index];
                    },
                    itemCount: tasks.length,
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: Text(
                    'Tasks today',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: tasksList.length,
                  itemBuilder: (_, int index) {
                    return tasksList[index];
                  },
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: NewTask(),
            ),
          )
        ],
      ),
    );
  }
}
