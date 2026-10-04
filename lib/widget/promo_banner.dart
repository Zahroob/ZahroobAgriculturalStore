import 'package:flutter/material.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: double.infinity,
        height: 199,
        child: Stack(
          fit: StackFit.expand,
          children: [
            // الصورة كخلفية
            Image.asset(
              'assets/image/photoBromo.png',
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) {
                return Container(color: const Color(0xFF156651));
              },
            ),
          ],
        ),
      ),
    );
  }
}
