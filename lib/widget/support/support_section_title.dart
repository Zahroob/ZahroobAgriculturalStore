import 'package:flutter/material.dart';

class SupportSectionTitle extends StatelessWidget {
  final String title;

  const SupportSectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }
}
