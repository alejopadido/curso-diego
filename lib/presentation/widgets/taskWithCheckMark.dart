import 'package:dieguin_app/Classes/taskWithCheckMarkClass.dart';
import 'package:dieguin_app/core/constants/app.colors.dart';
import 'package:flutter/material.dart';

class TaskWithCheckMark extends StatefulWidget {
  const TaskWithCheckMark({super.key, required this.taskwithcheckmarkclass});
  final Taskwithcheckmarkclass taskwithcheckmarkclass;

  @override
  State<TaskWithCheckMark> createState() => _TaskWithCheckMarkState();
}

class _TaskWithCheckMarkState extends State<TaskWithCheckMark> {
  Color color = Colors.grey;
  IconData icon = Icons.circle_outlined;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.grey,
        ),
        height: 90,
        child: Row(
          children: [
            Flexible(
                child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Content(
                title: widget.taskwithcheckmarkclass.title,
                toDo: widget.taskwithcheckmarkclass.toDo,
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (color == AppColors.orange) {
                        color = Colors.grey;
                        icon = Icons.circle_outlined;
                      } else {
                        color = AppColors.orange;
                        icon = Icons.check_circle;
                      }
                    });
                  },
                  icon: Icon(
                    icon,
                    color: color,
                    size: 28,
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({super.key, required this.title, required this.toDo});
  final String title;
  final String toDo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 3),
            Text(
              toDo,
              style: const TextStyle(fontSize: 12.5),
            ),
          ],
        ),
      ),
    );
  }
}
