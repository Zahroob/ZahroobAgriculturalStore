import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/product_banner.dart';
import 'package:zahroobstor/widget/product_details/add_to_cart_button.dart';
import 'package:zahroobstor/widget/product_details/product_description_card.dart';
import 'package:zahroobstor/widget/product_details/product_info.dart';
import 'package:zahroobstor/widget/product_details/product_price.dart';
import 'package:zahroobstor/widget/product_details/quantity_section.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const ProductBanner(),
            const SizedBox(height: 20),
            const ProductInfo(),
            const SizedBox(height: 20),
            const ProductPrice(),
            const SizedBox(height: 10),
            const QuantitySection(),
            const SizedBox(height: 20),
            const ProductDescriptionCard(),
            const SizedBox(height: 20),
            const AddToCartButton(),
          ],
        ),
      ),
    );
  }
}
