import 'package:flutter/material.dart';

class CustomBoutton extends StatelessWidget {
  const CustomBoutton({
    required this.onPressed,
    required this.text,
    super.key,
    required this.colorbutton,
    required this.colorText,
  });
  final String text;
  final Color colorbutton;
  final Color colorText;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(300, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        backgroundColor: colorbutton,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: colorText,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
