
import 'package:flutter/material.dart';

class DrawerMenuItem extends StatelessWidget {
  const DrawerMenuItem({
    super.key,
    required this.title,
    required this.icon,
    this.iconColor,
    this.onTap,
  });

  final String title;
  final IconData icon;
  final Color? iconColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: iconColor,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
      onTap: onTap,
    );
  }
}

