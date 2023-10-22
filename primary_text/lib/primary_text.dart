library primary_text;

import 'package:color/color.dart';
import 'package:flutter/material.dart';

class PrimaryText extends StatelessWidget {
  final double size;
  final FontWeight fontWeight;
  final Color color;
  final String text;
  final double height;
  final int line;
  final TextAlign alignment;

  const PrimaryText({
    Key? key,
    required this.text,
    this.fontWeight = FontWeight.bold,
    this.color = AppColors.black,
    this.size = 15,
    this.height = 1.3,
    this.line = 6,
    this.alignment = TextAlign.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: alignment,
      maxLines: line,
      style: TextStyle(
        color: color,
        height: height,
        fontFamily: 'Poppins',
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
