import 'package:flutter/material.dart';

class CategoryDataModel {
  final String title;
  final IconData icon;
  final WidgetBuilder pageBuilder;

  const CategoryDataModel({
    required this.title,
    required this.icon,
    required this.pageBuilder,
  });
}
