import 'package:flutter/material.dart';
import 'package:zahroobstor/data/category_data_model.dart';
import 'package:zahroobstor/page/one_product.dart';

final List<CategoryDataModel> categories = [
  CategoryDataModel(
    title: 'أسمدة',
    icon: Icons.eco_outlined,
    pageBuilder: (context) => const OneProduct(),
  ),
  CategoryDataModel(
    title: 'بذور',
    icon: Icons.grass_outlined,
    pageBuilder: (context) => const OneProduct(),
  ),
  CategoryDataModel(
    title: 'حشري',
    icon: Icons.bug_report_outlined,
    pageBuilder: (context) => const OneProduct(),
  ),
  CategoryDataModel(
    title: 'فطري',
    icon: Icons.coronavirus_outlined,
    pageBuilder: (context) => const OneProduct(),
  ),
  CategoryDataModel(
    title: 'أكاروسي',
    icon: Icons.pest_control_outlined,
    pageBuilder: (context) => const OneProduct(),
  ),
  CategoryDataModel(
    title: 'مغذيات',
    icon: Icons.science_outlined,
    pageBuilder: (context) => const OneProduct(),
  ),
];
