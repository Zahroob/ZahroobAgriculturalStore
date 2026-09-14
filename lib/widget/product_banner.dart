import 'package:flutter/material.dart';

class ProductBanner extends StatelessWidget {
  const ProductBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          width: double.infinity,
          height: 220,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                "assets/image/smad-aadoy-sayl-fyrty-byksy-4-ltr-7708789.webp",
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
