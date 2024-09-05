import 'package:dieguin_app/core/constants/constants.dart';
import 'package:dieguin_app/presentation/widgets/calendar.dart';
import 'package:dieguin_app/presentation/widgets/task_percent.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  static List<Date> dates = [
    Date(day: '12', date: 'Mon'),
    Date(day: '13', date: 'Thu', color: AppColors.orange),
    Date(
      day: '14',
      date: 'Wen',
    ),
    Date(day: '15', date: 'Tue'),
    Date(day: '16', date: 'Fri'),
    Date(day: '17', date: 'Sat'),
    Date(day: '18', date: 'Sun'),
  ];
  static const List<TaskPercent> tasks = [
    TaskPercent(
        task: 'Brandbook for Synthium',
        date: 'Oct, 15',
        percentage: 0.95,
        color: AppColors.lightBlue,
        percent_color: AppColors.boldblue),
    TaskPercent(
      task: 'Working on the moodboard for optimatech',
      date: 'Oct, 12',
      percentage: 0.17,
      color: AppColors.purple,
      percent_color: AppColors.boldpurple,
    ),
    TaskPercent(
      task: 'AstraTech research and app redisign',
      date: 'Nov, 28',
      percentage: 0.73,
      color: AppColors.beige,
      percent_color: AppColors.orange,
    ),
    TaskPercent(
      task: 'Smart HOme prototype',
      date: 'Nov, 2',
      percentage: 0.52,
      color: AppColors.lightGreen,
      percent_color: AppColors.boldgreen,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //MY TASKS, BUSCAR Y NOTIFICAR
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
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
                itemCount: dates.length,
                itemBuilder: (BuildContext context, int index) {
                  return dates[index];
                },
              ),
            ),

            const SizedBox(height: 20),
            //GRIDVIEW.BUILDER
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      // mainAxisExtent: 3,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8),
                  itemBuilder: (BuildContext context, int index) {
                    return tasks[index];
                  },
                  itemCount: tasks.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
