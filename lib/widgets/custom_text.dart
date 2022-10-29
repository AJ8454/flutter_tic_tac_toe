import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final List<Shadow>? shadows;
  final String? text;
  final double? fontsize;

  const CustomText({this.shadows, this.fontsize, this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: fontsize,
        shadows: shadows,
      ),
    );
  }
}
