import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/support/support_colors.dart';

class SendInquiryCard extends StatelessWidget {
  const SendInquiryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: SupportColors.primaryGreen.withValues(alpha: 0.15),
        ),
      ),
      child: Column(
        children: [
          const Icon(
            Icons.question_answer_outlined,
            size: 38,
            color: SupportColors.primaryGreen,
          ),
          const SizedBox(height: 10),
          const Text(
            'لم تجد إجابة؟',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          const Text(
            'أرسل لنا استفسارك وسنساعدك',
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: SupportColors.primaryGreen,
                foregroundColor: Colors.white,
                elevation: 0,
                padding: const EdgeInsets.symmetric(vertical: 13),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'إرسال استفسار',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
