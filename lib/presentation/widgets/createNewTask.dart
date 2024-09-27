import 'package:dieguin_app/presentation/screens/newProject_screen.dart';
import 'package:flutter/material.dart';

class CreateNewTask extends StatelessWidget {
  const CreateNewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 12.0),
                    child: Text(
                      'WHAT DO YOU WANT TO CREATE?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton.icon(
                    icon: const Icon(Icons.arrow_right),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewprojectScreen(),
                        ),
                      );
                    },
                    label: const Text(
                      'Project',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton.icon(
                    icon: const Icon(Icons.arrow_right),
                    onPressed: () {},
                    label: const Text('Task  '),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(18)),
        height: 70,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_box_rounded,
              color: Colors.white,
            ),
            SizedBox(
              width: 17,
            ),
            Text(
              'Create new ...',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none),
            )
          ],
        ),
      ),
    );
  }
}
