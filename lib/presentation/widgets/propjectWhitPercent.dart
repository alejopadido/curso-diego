import 'package:dieguin_app/Classes/projectWithPercentclass.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProjectWithPercent extends StatelessWidget {
  const ProjectWithPercent({super.key, required this.activitywithpercentclass});
  final ProjectWithPercentclass activitywithpercentclass;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: activitywithpercentclass.color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              activitywithpercentclass.task,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              activitywithpercentclass.date,
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    LinearPercentIndicator(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(0),
                      width: 90,
                      animation: true,
                      lineHeight: 6.0,
                      animationDuration: 2000,
                      percent: activitywithpercentclass.percentage,
                      progressColor: activitywithpercentclass.percentColor,
                      barRadius: const Radius.circular(20),
                    ),
                    Text(
                      '${activitywithpercentclass.percentage * 100}%',
                      style: const TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
