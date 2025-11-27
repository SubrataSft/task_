import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Widget? suffixWidget;
  final bool obscureText;
  final TextInputType? keyboardType;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.suffixWidget,
    this.obscureText = false,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: 390,
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.black, fontSize: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          suffixIcon: suffixWidget,
        ),
      ),
    );
  }
}
