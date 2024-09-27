import 'package:dieguin_app/Classes/projectWithPercentclass.dart';
import 'package:dieguin_app/Providers/projectTaskProvider.dart';
import 'package:dieguin_app/core/constants/app.colors.dart';
import 'package:dieguin_app/main.dart';
import 'package:dieguin_app/presentation/widgets/propjectWhitPercent.dart';
import 'package:dieguin_app/presentation/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewprojectScreen extends StatelessWidget {
  NewprojectScreen({
    super.key,
  });

  final taskDescrip = TextEditingController();
  final finishedDate = TextEditingController();
  final colorOfWidget = TextEditingController();
  final percent = TextEditingController();

  String taskDescripString = '';
  String finishedDateString = '';
  String colorOfWidgetString = '';
  String percentString = '';

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
          TextfieldForNew(text: 'Title', controller: taskDescrip),
          TextfieldForNew(text: 'date', controller: finishedDate),
          TextfieldForNew(text: 'color', controller: colorOfWidget),
          TextfieldForNew(text: 'percent', controller: percent),
          const SizedBox(height: 70),
          ElevatedButton(
            onPressed: () {
              taskDescripString = taskDescrip.text;
              finishedDateString = finishedDate.text;
              colorOfWidgetString = colorOfWidget.text;
              percentString = percent.text;

              print(
                  '$colorOfWidgetString$finishedDateString$taskDescripString$percentString');
            },
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(AppColors.orange),
            ),
            child: const Text(
              'Create new proyect',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
