import 'package:flutter/material.dart';

class IconCloseDrawer extends StatelessWidget {
  const IconCloseDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.11),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Icon(Icons.close, color: Colors.white, size: 20),
    );
  }
}
