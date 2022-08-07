import 'package:flutter/material.dart';

class ETextH6 extends StatelessWidget {
  const ETextH6(
      {Key? key, required this.textH6, this.fontWeight = FontWeight.w300})
      : super(key: key);
  final String textH6;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      textH6,
      maxLines: 7,
      textAlign: TextAlign.justify,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontWeight: fontWeight, fontSize: 16),
    );
  }
}
