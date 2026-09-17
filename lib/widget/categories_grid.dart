import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/category_card.dart';
import 'package:zahroobstor/widget/category_data.dart';

class CategoriesGrid extends StatelessWidget {
  final List<CategoryData> categories;
  final bool showAll;

  const CategoriesGrid({
    super.key,
    required this.categories,
    this.showAll = false,
  });

  @override
  Widget build(BuildContext context) {
    final visibleCategories = showAll
        ? categories
        : categories.take(4).toList();

    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: visibleCategories.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 9,
        crossAxisSpacing: 9,
        childAspectRatio: 0.82,
      ),
      itemBuilder: (context, index) {
        final category = visibleCategories[index];

        return InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(14),
          child: CategoryCard(title: category.title, icon: category.icon),
        );
      },
    );
  }
}
