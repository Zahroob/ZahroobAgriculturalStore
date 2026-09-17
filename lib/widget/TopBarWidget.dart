import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({
    super.key,
    required this.title,
    required this.colorText,
    required this.colorIcon,
    this.mainAxisAlignment, this.widthSizedBox,
  });

  final String title;
  final Color colorText;
  final Color colorIcon;
  final MainAxisAlignment? mainAxisAlignment;
  final double? widthSizedBox;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 24, color: colorText)),
        SizedBox(width: widthSizedBox,),
        Icon(Icons.notifications_none_outlined, color: colorIcon),
      ],
    );
  }
}
