import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({
    super.key,
    required this.backgroundImage,
    this.child,
    this.width,
    this.height = 180,
    this.borderRadius = 18,
  });

  final String backgroundImage;
  final Widget? child;
  final double? width;
  final double height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              backgroundImage,
              fit: BoxFit.cover,
            ),

            ?child,
          ],
        ),
      ),
    );
  }
}