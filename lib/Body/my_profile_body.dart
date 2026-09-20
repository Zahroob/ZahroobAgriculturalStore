import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/ProfileHeader.dart';
import 'package:zahroobstor/widget/ProfileOptionItem.dart';

class MyProfileBody extends StatelessWidget {
  const MyProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProfileHeader(),
          const SizedBox(height: 67),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const Text(
                  'عام',
                  style: TextStyle(color: Color(0xFF404040), fontSize: 14),
                ),
                const SizedBox(height: 16),
                ProfileOptionItem(
                  onTap: () {},
                  icon: Icons.receipt_outlined,
                  text: 'المعاملات',
                ),
                ProfileOptionItem(
                  onTap: () {},
                  icon: Icons.favorite_border_outlined,
                  text: 'المفضلة',
                ),
                ProfileOptionItem(
                  icon: Icons.saved_search_outlined,
                  text: 'العناوين المحفوظة',
                  onTap: () {},
                ),
                ProfileOptionItem(
                  icon: Icons.payment_outlined,
                  text: 'طرق الدفع',
                  onTap: () {},
                ),
                ProfileOptionItem(
                  icon: Icons.bookmark_border_outlined,
                  text: 'الإشعارات',
                  onTap: () {},
                ),
                ProfileOptionItem(
                  icon: Icons.security_outlined,
                  text: 'الأمان',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
