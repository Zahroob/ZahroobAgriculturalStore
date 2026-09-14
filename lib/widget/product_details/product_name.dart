import 'package:flutter/material.dart';

class ProductName extends StatelessWidget {
  const ProductName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'سماد عضوي طبيعي 100% - 1 كغ',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      textAlign: TextAlign.right,
    );
  }
}
