import 'package:dieguin_app/core/constants/app.colors.dart';
import 'package:dieguin_app/main.dart';
import 'package:dieguin_app/presentation/widgets/addTaskForProject.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Projectdetail extends StatelessWidget {
  const Projectdetail({
    super.key,
    required this.title,
    required this.dedscription,
    required this.date,
    this.list,
  });
  final String title;
  final String? dedscription;
  final String date;
  final List? list;

  Widget titleOfEachSection(String t) {
    return Text(
      t,
      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }

  Widget taskListForThisProject() {
    if (list == null) {
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
        itemCount: list?.length,
        itemBuilder: (_, int index) {
          return list?[index];
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.orange,
        title: Text(
          title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: ListView(
          children: [
            //DATE
            titleOfEachSection('Date:'),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Text(
                date,
                style: const TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            //DESCRIPTION
            titleOfEachSection('Description:'),
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                dedscription ?? 'there are not a description',
                style: const TextStyle(fontSize: 15),
              ),
            ),
            //TASKSLIST
            titleOfEachSection('Tasks for this project:'),
            taskListForThisProject(),
            //
          ],
        ),
      ),
      //ADD TASK
      floatingActionButton: Addtaskforproject(
        eachProjectList: list,
      ),
    );
  }
}
