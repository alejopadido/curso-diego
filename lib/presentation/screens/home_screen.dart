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
//NULL VERIFICATION IN THE GRID
    Widget gridViewVerification() {
      if (context
          .watch<PercentTaskProvider>()
          .activityWithPercentList
          .isEmpty) {
        return const SizedBox(
          height: 100,
          width: 150,
          child: Center(
            child: Text(
              'There are not projects yet',
              style: TextStyle(fontSize: 22, color: Colors.grey),
            ),
          ),
        );
      } else {
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
              .watch<PercentTaskProvider>()
              .activityWithPercentList
              .length,
        );
      }
    }

//NULL VERIFICATION IN THE LIST
    Widget listViewVerificaction() {
      if (context.watch<Tasktodayprovider>().taskWithCheckMarkList.isEmpty) {
        return const SizedBox(
          height: 100,
          width: 150,
          child: Center(
            child: Text(
              'There are not tasks yet',
              style: TextStyle(fontSize: 22, color: Colors.grey),
            ),
          ),
        );
      } else {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount:
              context.watch<Tasktodayprovider>().taskWithCheckMarkList.length,
          itemBuilder: (_, int index) {
            return context
                .watch<Tasktodayprovider>()
                .taskWithCheckMarkList[index];
          },
        );
      }
    }

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
                  child: gridViewVerification(),
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
                listViewVerificaction(),

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
