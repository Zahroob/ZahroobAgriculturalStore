import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/support/support_colors.dart';

class FAQItem extends StatelessWidget {
  final String question;
  final String answer;

  const FAQItem({super.key, required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
      childrenPadding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
      iconColor: SupportColors.primaryGreen,
      collapsedIconColor: Colors.black45,
      title: Text(
        question,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      ),
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            answer,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.black54,
              height: 1.6,
            ),
          ),
        ),
      ],
    );
  }
}
