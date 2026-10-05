
import 'package:flutter/material.dart';

class DrawerSectionTitle extends StatelessWidget {
  const DrawerSectionTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFF787878),
          ),
        ),
      ),
    );
  }
}
