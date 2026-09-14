
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/image/zahroob_store_icon_256.png',
      width: 100,
      height: 100,
    );
  }
}
