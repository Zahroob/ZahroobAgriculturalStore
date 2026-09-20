import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/support/support_colors.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'الدعم والمساعدة',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: SupportColors.primaryGreen,
          ),
        ),
        SizedBox(height: 6),
        Text(
          'نحن هنا لمساعدتك في اختيار المنتج المناسب',
          style: TextStyle(fontSize: 15, color: Colors.black54),
        ),
      ],
    );
  }
}
