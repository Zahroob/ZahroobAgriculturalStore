
import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/Promo_Banner.dart';

class PromoCarousel extends StatelessWidget {
  const PromoCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: PageView(
        physics: const BouncingScrollPhysics(
          decelerationRate: ScrollDecelerationRate.fast,
        ),
        children: [PromoBanner(), PromoBanner(), PromoBanner()],
      ),
    );
  }
}