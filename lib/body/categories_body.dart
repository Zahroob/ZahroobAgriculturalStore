
import 'package:flutter/material.dart';
import 'package:zahroobstor/data/category_data.dart';
import 'package:zahroobstor/widget/category_card.dart';
import 'package:zahroobstor/widget/search_field.dart';

class CategoriesBody extends StatelessWidget {
  const CategoriesBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
    
      children: [
    
        SearchField(),
    
        Expanded(
    
          child: GridView.builder(
            padding: const EdgeInsets.all(12),
            itemCount: categories.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 1.1,
            ),
            itemBuilder: (context, index) {
              final category = categories[index];
    
              return CategoryCard(
                title: category.title,
                icon: category.icon,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: category.pageBuilder),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
