import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/IconSocialMedia.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconSocialMedia(
          height: height,
          iconPath: 'assets/icons/facebook.svg',
          onPressed: () {},
        ),
        IconSocialMedia(
          height: height,
          iconPath: 'assets/icons/twitter.svg',
          onPressed: () {},
        ),
        IconSocialMedia(
          height: height,
          iconPath: 'assets/icons/google-plus.svg',
          onPressed: () {},
        ),
      ],
    );
  }
}
