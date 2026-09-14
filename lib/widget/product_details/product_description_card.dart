import 'package:flutter/material.dart';
import 'package:zahroobstor/app_routes.dart';
import 'package:zahroobstor/widget/product_details/product_description.dart';
import 'package:zahroobstor/widget/product_details/product_name.dart';

class ProductDescriptionCard extends StatelessWidget {
  const ProductDescriptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const ProductName(),
          const SizedBox(height: 5),
          const ProductDescription(),
          const ProductDescription(),
          GestureDetector(
            onTap: () =>
                Navigator.pushNamed(context, AppRoutes.productSpecifications),
            child: const Text(
              'عرض المواصفات ←',
              style: TextStyle(fontSize: 14, color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
