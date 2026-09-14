import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'لتحسين التربة وزيادة نمو المحاصيل',
      style: TextStyle(fontSize: 14, color: Colors.grey),
      textAlign: TextAlign.right,
    );
  }
}
