
import 'package:flutter/material.dart';

class ProductDiscount extends StatelessWidget {
  const ProductDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$512.58',
      style: TextStyle(
        decoration: TextDecoration.lineThrough,
        fontSize: 16,
        color: Colors.grey,
      ),
    );
  }
}
