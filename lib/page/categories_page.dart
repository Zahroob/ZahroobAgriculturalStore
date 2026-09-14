import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/categories_grid.dart';
import 'package:zahroobstor/widget/category_data.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  bool showAllCategories = false;
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
    return Scaffold(
      body: Column(
        children: [
          CategoriesGrid(categories: categories, showAll: showAllCategories),
          const Text('محتوى صفحة التصنيفات'),
        ],
      ),
    );
  }
}
