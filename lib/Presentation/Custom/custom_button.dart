import 'dart:ui';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final double height;
  final Widget? leadingImage;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    this.height = 55,
    this.backgroundColor,
    this.textColor,
    this.leadingImage,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            leadingImage ?? SizedBox(),
            if (leadingImage != null) SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                color: textColor ?? Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
