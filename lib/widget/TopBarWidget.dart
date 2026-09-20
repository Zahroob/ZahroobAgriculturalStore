import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({
    super.key,
    required this.title,
    required this.colorText,
    required this.colorIcon,
  });

  final String title;
  final Color colorText;
  final Color colorIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text(title, style: TextStyle(fontSize: 24, color: colorText)),

        IconButton(
          onPressed: () {
            // فتح الإعدادات
          },
          icon: Icon(Icons.settings_outlined, color: colorIcon),
        ),
      ],
    );
  }
}
