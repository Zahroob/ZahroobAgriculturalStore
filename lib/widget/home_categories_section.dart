import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/categories_grid.dart';
import 'package:zahroobstor/widget/category_data.dart';
import 'package:zahroobstor/widget/section_title.dart';

class HomeCategoriesSection extends StatelessWidget {
  final List<CategoryData> categories;
  final bool showAll;
  final VoidCallback onToggleShowAll;

  const HomeCategoriesSection({
    super.key,
    required this.categories,
    required this.showAll,
    required this.onToggleShowAll,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'تسوق حسب التصنيف',
          actionText: showAll ? 'عرض أقل' : 'عرض الكل',
          onActionPressed: onToggleShowAll,
        ),
        CategoriesGrid(categories: categories, showAll: showAll),
      ],
    );
  }
}
