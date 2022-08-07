import 'package:flutter/material.dart';
import 'e_text_h6.dart';

class EElevatedButton extends StatelessWidget {
  const EElevatedButton(
      {Key? key,
        required this.onPressed,
        required this.color,
        required this.text})
      : super(key: key);

  final VoidCallback onPressed;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(const Color(0xFF1E232C)),
          minimumSize: MaterialStateProperty.all(const Size(347.6, 56)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: Color(0xFF1E232C))
            ),
          ),
        ),

        // ElevatedButton.styleFrom(
        //   primary: color,
        //   minimumSize: const Size.fromHeight(55),
        // ),
        child: ETextH6(fontWeight: FontWeight.normal, textH6: text));
  }
}

