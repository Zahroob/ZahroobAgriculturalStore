import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  static const Color primaryGreen = Color(0xFF2E7D32);
  static const Color dividerColor = Color(0xFF5A6B5C);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(color: dividerColor, thickness: 1, endIndent: 10),
        ),

        const Text(
          '  OR  ',
          style: TextStyle(
            fontSize: 12,
            color: primaryGreen,
            fontWeight: FontWeight.bold,
          ),
        ),

        Expanded(child: Divider(color: dividerColor, thickness: 1, indent: 10)),
      ],
    );
  }
}
