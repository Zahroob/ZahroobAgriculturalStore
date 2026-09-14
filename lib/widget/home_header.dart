import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/Profile_Image.dart';
import 'package:zahroobstor/widget/app_logo.dart';
import 'package:zahroobstor/widget/shopping_cart.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ShoppingCart(),
            const Spacer(),
            AppLogo(),
            const Spacer(),
            ProfileImage(),
          ],
        ),

      
      ],
    );
  }
}
