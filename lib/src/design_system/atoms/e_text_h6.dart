import 'package:flutter/material.dart';

class ETextH6 extends StatelessWidget {
  const ETextH6(
      {Key? key,
      required this.textH6,
      this.fontWeight,
      this.color,
      this.fontSize = 15})
      : super(key: key);
  final String textH6;
  final FontWeight? fontWeight;
  final double fontSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      textH6,
      textAlign: TextAlign.start,
      style: TextStyle(
          fontFamily: 'Urbanist',
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: color),
    );
  }
}
