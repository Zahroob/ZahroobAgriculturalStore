import 'package:flutter/foundation.dart';

@immutable
class CategoryItem {
  final String title;
  final String image;

  const CategoryItem({
    required this.title,
    required this.image,
  });
}