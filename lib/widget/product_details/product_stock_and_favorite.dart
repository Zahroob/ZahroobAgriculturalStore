import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/HeartIconWidget.dart';

class ProductStockAndFavorite extends StatelessWidget {
  const ProductStockAndFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HeartIconWidget(initialValue: false),
        Text('متوفر في المخزون', style: TextStyle(color: Colors.green)),
      ],
    );
  }
}
