import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/product_details/product_description.dart';
import 'package:zahroobstor/widget/product_details/product_name.dart';
import 'package:zahroobstor/widget/product_details/product_stock_and_favorite.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ProductName(),
        SizedBox(height: 5),
        ProductDescription(),
        SizedBox(height: 8),
        ProductStockAndFavorite(),
      ],
    );
  }
}
