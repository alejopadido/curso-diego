import 'package:dieguin_app/core/constants/app.colors.dart';
import 'package:dieguin_app/presentation/widgets/addTaskForProject.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
            //
          ],
        ),
      ),
      //ADD TASK
      floatingActionButton: Addtaskforproject(),
    );
  }
}
