import 'package:flutter/material.dart';

class Date extends StatelessWidget {
  Date({
    super.key,
    required this.day,
    required this.date,
    this.color,
    this.text_color,
  });
  final String day;
  final String date;
  Color? color;
  Color? text_color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color ?? Colors.grey,
        ),
        width: 70,
        height: 80,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                day,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color:
                        color != null ? text_color = Colors.white : text_color),
              ),
              Text(
                date,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color:
                        color != null ? text_color = Colors.white : text_color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
