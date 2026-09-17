import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/categories_grid.dart';
import 'package:zahroobstor/widget/category_data.dart';
import 'package:zahroobstor/widget/section_title.dart';

class HomeCategoriesSection extends StatelessWidget {
  final List<CategoryData> categories;
  final VoidCallback? onShowAll;

  const HomeCategoriesSection({
    super.key,
    required this.categories,
    this.onShowAll,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'تسوق حسب التصنيف',
          actionText: 'عرض الكل',
          onActionPressed: onShowAll,
        ),
        CategoriesGrid(categories: categories),
      ],
    );
  }
}
