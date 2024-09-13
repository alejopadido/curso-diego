import 'package:dieguin_app/core/constants/app.colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Date extends StatelessWidget {
  Date({
    super.key,
    required this.day,
    this.color,
    this.text_color,
  });
  DateTime day;
  Color? color;
  Color? text_color = Colors.black;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String isToday = DateFormat('d').format(now);
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: DateFormat('d').format(day) == isToday
              ? color = AppColors.orange
              : color = AppColors.grey,
        ),
        width: 70,
        height: 80,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                DateFormat('d').format(day),
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: color == AppColors.orange
                        ? text_color = Colors.white
                        : text_color),
              ),
              Text(
                DateFormat('EEE').format(day),
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: color == AppColors.orange
                        ? text_color = Colors.white
                        : text_color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
