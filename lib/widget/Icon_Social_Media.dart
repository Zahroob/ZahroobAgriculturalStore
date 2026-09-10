import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconSocialMedia extends StatelessWidget {
  const IconSocialMedia({
    super.key,
    required this.height,
    required this.iconPath,
    required this.onPressed,
  });

  final double height;
  final String iconPath;
  final VoidCallback onPressed;

  static const Color primaryGreen = Color(0xFF2E7D32);
  static const Color borderGreen = Color(0xFFA5C9A7);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: borderGreen),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(
            iconPath,
            colorFilter: const ColorFilter.mode(primaryGreen, BlendMode.srcIn),
            height: height * 0.02,
          ),
        ),
      ),
    );
  }
}
