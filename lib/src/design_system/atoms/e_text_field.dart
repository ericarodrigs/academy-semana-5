import 'package:flutter/material.dart';

class ETextField extends StatelessWidget {
  const ETextField({
    Key? key,
    required this.labelText,
    required this.textInputAction,
    required this.textValidator,
    this.keyboardType,
    this.obscureText,
  }) : super(key: key);

  final String labelText;
  final TextInputAction? textInputAction;
  final String textValidator;
  final TextInputType? keyboardType;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return textValidator;
          }
          return null;
        },
        obscureText: obscureText ?? false,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 19, bottom: 19, top: 19),
          fillColor: const Color(0xffF7F8F9),
          filled: true,
          labelText: labelText,
          labelStyle: const TextStyle(
              color: Color(0xff8391A1),
              fontSize: 15,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w500),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xffDADADA), width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xffDADADA), width: 1),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xffDADADA), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.blue, width: 2),
          ),
        ),
      ),
    );
  }
}
