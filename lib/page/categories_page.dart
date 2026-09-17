import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/category_card.dart';
import 'package:zahroobstor/widget/category_data.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  static const List<CategoryData> _categories = [
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
    return GridView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: _categories.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 1.1,
      ),
      itemBuilder: (context, index) {
        final category = _categories[index];
        return CategoryCard(title: category.title, icon: category.icon);
      },
    );
  }
}
