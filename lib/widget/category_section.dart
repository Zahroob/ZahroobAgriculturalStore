import 'package:flutter/material.dart';

class CategoryItem {
  final String title;
  final String image;

  const CategoryItem({
    required this.title,
    required this.image,
  });
}

class CategorySection extends StatelessWidget {
  final String title;
  final String actionText;
  final List<CategoryItem> items;
  final void Function(CategoryItem item)? onItemTap;
  final VoidCallback? onViewAllTap;

  const CategorySection({
    super.key,
    required this.title,
    required this.items,
    this.actionText = 'عرض الكل',
    this.onItemTap,
    this.onViewAllTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: onViewAllTap,
              child: Text(actionText),
            ),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 115,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: items.length,
            separatorBuilder: (_, _) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final item = items[index];

              return GestureDetector(
                onTap: () => onItemTap?.call(item),
                child: SizedBox(
                  width: 95,
                  child: Column(
                    children: [
                      Container(
                        width: 82,
                        height: 82,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          item.image,
                          fit: BoxFit.cover,
                          errorBuilder: (_, _, _) {
                            return const Icon(
                              Icons.image_not_supported_outlined,
                              size: 28,
                              color: Colors.grey,
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        item.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}