import 'package:dieguin_app/core/constants/app.colors.dart';
import 'package:dieguin_app/presentation/widgets/textField.dart';
import 'package:flutter/material.dart';

class NewprojectScreen extends StatelessWidget {
  const NewprojectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Align(
            alignment: Alignment.center,
            child: Text(
              'New Project',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const TextfieldForNew(text: 'Title'),
            const TextfieldForNew(text: 'Description', boxHeight: 6),
            const TextfieldForNew(text: 'When do you want to finish?'),
            const TextfieldForNew(text: 'Priority level'),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                color: AppColors.orange,
                child: Text('Create now'),
              ),
            ),
          ],
        ));
  }
}
