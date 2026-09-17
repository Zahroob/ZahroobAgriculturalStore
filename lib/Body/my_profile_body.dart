import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/ProfileHeader.dart';
import 'package:zahroobstor/widget/ProfileOptionItem.dart';

class MyProfileBody extends StatelessWidget {
  const MyProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProfileHeader(),
        const SizedBox(height: 67),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const Text(
                'General',
                style: TextStyle(color: Color(0xFF404040), fontSize: 14),
              ),
              const SizedBox(height: 16),
              ProfileOptionItem(
                onTap: () {},
                icon: Icons.receipt_outlined,
                text: 'Transaction',
              ),
              ProfileOptionItem(
                onTap: () {},
                icon: Icons.favorite_border_outlined,
                text: 'Wishlist',
              ),
              ProfileOptionItem(
                icon: Icons.saved_search_outlined,
                text: 'Saved Address',
                onTap: () {},
              ),
              ProfileOptionItem(
                icon: Icons.payment_outlined,
                text: 'Payment Methods',
                onTap: () {},
              ),
              ProfileOptionItem(
                icon: Icons.bookmark_border_outlined,
                text: 'Notification',
                onTap: () {},
              ),
              ProfileOptionItem(
                icon: Icons.security_outlined,
                text: 'Security',
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
