import 'package:flutter/material.dart';
import 'package:zahroobstor/app_routes.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.cart);
      },
      icon: Icon(Icons.shopping_cart_outlined, color: Colors.green),
    );
  }
}
