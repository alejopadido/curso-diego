import 'package:dieguin_app/Classes/projectWithPercentclass.dart';
import 'package:dieguin_app/Providers/projectTaskProvider.dart';
import 'package:dieguin_app/core/constants/app.colors.dart';
import 'package:dieguin_app/main.dart';
import 'package:dieguin_app/presentation/widgets/dropDownColorMenu.dart';
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
  final description = TextEditingController();

  String taskDescripString = '';
  String finishedDateString = '';
  String colorOfWidgetString = '';
  String descriptionString = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
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
      body: SingleChildScrollView(
        child: SizedBox(
          height: double.maxFinite,
          child: Column(
            children: [
              //TITLE
              TextfieldForNew(text: 'Title', controller: taskDescrip),
              //DESCRIPTION
              TextfieldForNew(
                  text: 'Description', controller: description, boxHeight: 6),
              //DATE
              TextfieldForNew(text: 'date', controller: finishedDate),
              //CHOOSE COLOR BUTTON
              DropDownColorsMenu(),
              const SizedBox(height: 120),
              //CREATE NEW PROJECT BUTTON
              ElevatedButton(
                onPressed: () {
                  Color color = DropDownColorsMenu().value;
                  taskDescripString = taskDescrip.text;
                  finishedDateString = finishedDate.text;
                  colorOfWidgetString = colorOfWidget.text;
                  descriptionString = description.text;

                  context.read<PercentTaskProvider>().addProjectWithPercent(
                        ProjectWithPercent(
                          activitywithpercentclass: ProjectWithPercentclass(
                            task: taskDescripString,
                            date: finishedDateString,
                            color: color,
                            percentColor: color,
                            percentage: 0,
                          ),
                        ),
                      );

                  Navigator.popUntil(context, (route) => route.isFirst);
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
        ),
      ),
    );
  }
}
