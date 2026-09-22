import 'package:flutter/material.dart';

class SmallOfferWidget extends StatelessWidget {
  const SmallOfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 50,
      decoration: const BoxDecoration(
        color: Color(0xFFE44A4A),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(12),
          topLeft: Radius.circular(12),
        ),
      ),
      alignment: Alignment.center,
      child: const Text(
        "45% OFF",
        style: TextStyle(
          color: Colors.white,
          fontSize: 8,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
