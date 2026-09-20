import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/support/agricultural_consultation_card.dart';
import 'package:zahroobstor/widget/support/contact_card.dart';
import 'package:zahroobstor/widget/support/faq_card.dart';
import 'package:zahroobstor/widget/support/page_header.dart';
import 'package:zahroobstor/widget/support/send_inquiry_card.dart';
import 'package:zahroobstor/widget/support/support_section_title.dart';

class SupportBody extends StatelessWidget {
  const SupportBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 30),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PageHeader(),
              const SizedBox(height: 20),
              const AgriculturalConsultationCard(),
              const SizedBox(height: 28),
              const SupportSectionTitle(title: 'طرق التواصل معنا'),
              const SizedBox(height: 12),
              ContactCard(
                icon: Icons.phone_outlined,
                title: 'اتصل بنا',
                subtitle: 'تحدث مع خدمة العملاء مباشرة',
                onTap: () {},
              ),
              const SizedBox(height: 10),
              ContactCard(
                icon: Icons.chat_outlined,
                title: 'واتساب',
                subtitle: 'أرسل استفسارك أو صورة للمحصول',
                onTap: () {},
              ),
              const SizedBox(height: 10),
              ContactCard(
                icon: Icons.facebook_outlined,
                title: 'فيسبوك',
                subtitle: 'تابع العروض وآخر أخبار المتجر',
                onTap: () {},
              ),
              const SizedBox(height: 28),
              const SupportSectionTitle(title: 'الأسئلة الشائعة'),
              const SizedBox(height: 12),
              const FAQCard(),
              const SizedBox(height: 28),
              const SendInquiryCard(),
            ],
          ),
        ),
      ),
    );
  }
}
