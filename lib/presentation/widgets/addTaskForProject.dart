import 'package:dieguin_app/Classes/projectWithPercentclass.dart';
import 'package:dieguin_app/Classes/taskWithCheckMarkClass.dart';
import 'package:dieguin_app/Providers/taskTodayProvider.dart';
import 'package:dieguin_app/core/constants/app.colors.dart';
import 'package:dieguin_app/main.dart';
import 'package:dieguin_app/presentation/widgets/taskWithCheckMark.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Addtaskforproject extends StatelessWidget {
  Addtaskforproject({
    super.key,
  });
  final titlecontroller = TextEditingController();
  final contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.orange,
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Create task'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: titlecontroller,
                    decoration: const InputDecoration(
                      labelText: 'Title',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: contentController,
                    decoration: const InputDecoration(
                      labelText: 'Content',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    String contentControllerText = contentController.text;
                    String TitleControllerText = titlecontroller.text;
                    TaskWithCheckMark newTask = TaskWithCheckMark(
                        taskwithcheckmarkclass: Taskwithcheckmarkclass(
                            title: contentControllerText,
                            toDo: TitleControllerText));
                    //ADD TO THE TASKPROVIDER
                    Provider.of<Tasktodayprovider>(context, listen: false)
                        .addTaskFuntion(newTask);
                    // context.watch<Tasktodayprovider>().addTaskFuntion(newTask);
                    // Navigator.pop(context);
                    //ADD TO THE PROJECT
                    Navigator.pop(context);
                  },
                  child: const Text('Done'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
