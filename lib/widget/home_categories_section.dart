import 'package:flutter/material.dart';
import 'package:zahroobstor/app/app_routes.dart';
import 'package:zahroobstor/data/category_data_model.dart';
import 'package:zahroobstor/widget/categories_grid.dart';
import 'package:zahroobstor/widget/section_title.dart';

class HomeCategoriesSection extends StatelessWidget {
  final List<CategoryDataModel> categories;

  const HomeCategoriesSection({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'تسوق حسب التصنيف',
          actionText: 'عرض الكل',
          onActionPressed: () {
            Navigator.pushNamed(context, AppRoutes.categories);
          },
        ),
        CategoriesGrid(categories: categories),
      ],
    );
  }
}
