import 'package:dieguin_app/core/constants/app.colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TaskPercent extends StatelessWidget {
  const TaskPercent(
      {super.key,
      required this.task,
      required this.date,
      required this.percentage,
      required this.color,
      required this.percent_color});
  final String task;
  final String date;
  final double percentage;
  final Color color;
  final Color percent_color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      // height: 100,
      // width: 3000,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              task,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              date,
              style: const TextStyle(fontSize: 12),
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
                      percent: percentage,
                      progressColor: percent_color,
                      barRadius: const Radius.circular(20),
                    ),
                    Text(
                      '${percentage * 100}%',
                      style: const TextStyle(fontSize: 12),
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
