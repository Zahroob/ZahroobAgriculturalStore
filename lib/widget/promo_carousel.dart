import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/Promo_Banner.dart';

class PromoCarousel extends StatefulWidget {
  const PromoCarousel({super.key});

  @override
  State<PromoCarousel> createState() => _PromoCarouselState();
}

class _PromoCarouselState extends State<PromoCarousel> {
  static const int _promoCount = 3;
  final _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: Column(
        children: [
          SizedBox(
            height: 199,

            child: PageView.builder(
              controller: _pageController,
              physics: const BouncingScrollPhysics(
                decelerationRate: ScrollDecelerationRate.fast,
              ),
              onPageChanged: (page) {
                setState(() => _currentPage = page);
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return AnimatedBuilder(
                  animation: _pageController,
                  builder: (BuildContext context, Widget? child) {
                    double page = _pageController.page ?? 0;
                    double difference = (page - index).abs();
                    double opacity = (1 - difference).clamp(0.0, 1.0);
                    return Opacity(opacity: opacity, child: child);
                  },
                  child: const PromoBanner(),
                );
              },
              // children: const [PromoBanner(), PromoBanner(), PromoBanner()],
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _promoCount,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: const EdgeInsets.symmetric(horizontal: 3),
                width: _currentPage == index ? 20 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: _currentPage == index
                      ? const Color(0xFF156651)
                      : Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
