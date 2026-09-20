import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/support/faq_item.dart';

class FAQCard extends StatelessWidget {
  const FAQCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(
        children: [
          FAQItem(
            question: 'كيف أختار السماد المناسب لمحصولي؟',
            answer:
                'يعتمد اختيار السماد على نوع المحصول ومرحلة النمو وحالة التربة واحتياجات النبات.',
          ),
          Divider(height: 1),
          FAQItem(
            question: 'كيف أطلب منتج؟',
            answer:
                'اختر المنتج ثم أضفه إلى السلة، وبعد ذلك انتقل إلى إتمام الطلب.',
          ),
          Divider(height: 1),
          FAQItem(
            question: 'ما مدة توصيل الطلب؟',
            answer: 'تختلف مدة التوصيل حسب المنطقة وتفاصيل الطلب.',
          ),
          Divider(height: 1),
          FAQItem(
            question: 'هل يمكنني إلغاء الطلب؟',
            answer:
                'يمكنك التواصل مع خدمة العملاء في أقرب وقت لمعرفة إمكانية إلغاء الطلب.',
          ),
          Divider(height: 1),
          FAQItem(
            question: 'هل المنتجات مناسبة لكل المحاصيل؟',
            answer:
                'ليس بالضرورة. اختيار المنتج والجرعة يعتمد على نوع المحصول ومرحلة النمو والحالة الزراعية.',
          ),
        ],
      ),
    );
  }
}
