import 'dart:ui';

import 'package:dieguin_app/core/constants/app.colors.dart';
import 'package:flutter/material.dart';

class TextfieldForNew extends StatelessWidget {
  const TextfieldForNew({super.key, required this.text, this.boxHeight});
  final String text;
  final int? boxHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        maxLines: boxHeight,
        cursorColor: AppColors.orange,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade100,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none),
            hintText: text),
        selectionHeightStyle: BoxHeightStyle.includeLineSpacingBottom,
      ),
    );
  }
}
