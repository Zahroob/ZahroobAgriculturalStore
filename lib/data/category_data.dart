import 'package:flutter/material.dart';
import 'package:zahroobstor/data/category_data_model.dart';
import 'package:zahroobstor/page/my_profily_page.dart';
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
    title: 'أدوات',
    icon: Icons.handyman_outlined,
    pageBuilder: (context) => const OneProduct(),
  ),
  CategoryDataModel(
    title: 'معدات ري',
    icon: Icons.agriculture_outlined,
    pageBuilder: (context) => const OneProduct(),
  ),
  CategoryDataModel(
    title: 'قطع غيار',
    icon: Icons.settings_outlined,
    pageBuilder: (context) => const OneProduct(),
  ),
  CategoryDataModel(
    title: 'خراطيم',
    icon: Icons.water_outlined,
    pageBuilder: (context) => const OneProduct(),
  ),
  CategoryDataModel(
    title: 'رشاشات',
    icon: Icons.spa_outlined,
    pageBuilder: (context) => const OneProduct(),
  ),
  CategoryDataModel(
    title: 'مضخات',
    icon: Icons.water_drop_outlined,
    pageBuilder: (context) => const OneProduct(),
  ),
];
