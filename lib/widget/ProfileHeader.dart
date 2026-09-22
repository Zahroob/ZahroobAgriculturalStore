import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/TopBarWidget.dart';
import 'package:zahroobstor/widget/UserInfoCard.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 152,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
              image: AssetImage('assets/image/ProfileBG.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),

        Positioned(
          top: 32,
          left: 16,
          right: 16,
          child: TopBarWidget(
            title: 'حسابي',
            colorText: const Color(0xFFFFFFFF),
            colorIcon: const Color(0xFFFFFFFF),             mainAxisAlignment: MainAxisAlignment.spaceBetween,

          ),
        ),
        UserInfoCard(),
      ],
    );
  }
}
