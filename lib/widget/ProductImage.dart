import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/SmallOfferWidget.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.height, required this.width, required this.imageproduct});
  final double height;
  final double width;
  final String imageproduct;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: height,
          width: width,
          child: Image.asset(imageproduct, fit: BoxFit.cover),
        ),
        Positioned(top: 100, child: SmallOfferWidget()),
      ],
    );
  }
}
