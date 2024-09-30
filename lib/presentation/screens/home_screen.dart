import 'package:dieguin_app/Providers/projectTaskProvider.dart';
import 'package:dieguin_app/Providers/taskTodayProvider.dart';
import 'package:dieguin_app/presentation/widgets/calendar.dart';
import 'package:dieguin_app/presentation/widgets/createNewTask.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

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
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Proyects progress',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
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
                      return context
                          .watch<PercentTaskProvider>()
                          .activityWithPercentList[index];
                    },
                    itemCount: context
                        .read<PercentTaskProvider>()
                        .activityWithPercentList
                        .length,
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
                  itemCount: context
                      .read<Tasktodayprovider>()
                      .taskWithCheckMarkList
                      .length,
                  itemBuilder: (_, int index) {
                    return context
                        .read<Tasktodayprovider>()
                        .taskWithCheckMarkList[index];
                  },
                ),
                const SizedBox(height: 90)
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: CreateNewTask(),
            ),
          )
        ],
      ),
    );
  }
}
