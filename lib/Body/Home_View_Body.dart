import 'package:flutter/material.dart';
import 'package:zahroobstor/app_routes.dart';
import 'package:zahroobstor/widget/Most_Sold_Products.dart';
import 'package:zahroobstor/widget/category_data.dart';
import 'package:zahroobstor/widget/home_categories_section.dart';
import 'package:zahroobstor/widget/promo_carousel.dart';
import 'package:zahroobstor/widget/search_field.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key, this.onShowAllCategories});

  final VoidCallback? onShowAllCategories;

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final List<CategoryData> categories = const [
    CategoryData(title: 'أسمدة', icon: Icons.eco_outlined),
    CategoryData(title: 'بذور', icon: Icons.grass_outlined),
    CategoryData(title: 'أدوات', icon: Icons.handyman_outlined),
    CategoryData(title: 'معدات ري', icon: Icons.agriculture_outlined),

    CategoryData(title: 'قطع غيار', icon: Icons.settings_outlined),
    CategoryData(title: 'خراطيم', icon: Icons.water_outlined),
    CategoryData(title: 'رشاشات', icon: Icons.spa_outlined),
    CategoryData(title: 'مضخات', icon: Icons.water_drop_outlined),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          children: [
            const SearchField(),
            const SizedBox(height: 20),
            const PromoCarousel(),
            HomeCategoriesSection(
              categories: categories,
              onShowAll: widget.onShowAllCategories ??
                  () => Navigator.pushNamed(context, AppRoutes.categories),
            ),
            const MostSoldProducts(),
          ],
        ),
      ),
    );
  }
}
