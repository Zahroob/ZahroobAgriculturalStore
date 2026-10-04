import 'package:flutter/material.dart';
import 'package:zahroobstor/body/product_details_body.dart';
import 'package:zahroobstor/widget/app_logo.dart';
import 'package:zahroobstor/widget/store_app_bar.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StoreAppBar(
        showBackButton: true,
        logo: AppLogo(),
        title: 'تفاصيل المنتج',
      ),
      body: ProductDetailsBody(),
    );
  }
}
