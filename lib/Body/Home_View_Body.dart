import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zahroobstor/widget/Most_Sold_Products.dart';
import 'package:zahroobstor/widget/categories_grid.dart';
import 'package:zahroobstor/widget/category_data.dart';
import 'package:zahroobstor/widget/home_header.dart';
import 'package:zahroobstor/widget/promo_carousel.dart';
import 'package:zahroobstor/widget/section_title.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  bool showAllCategories = false;
  final List<CategoryData> categories = const [
    CategoryData(title: 'أسمدة', icon: Icons.eco_outlined),
    CategoryData(title: 'بذور', icon: Icons.grass_outlined),
    CategoryData(title: 'أدوات', icon: Icons.handyman_outlined),
    CategoryData(title: 'معدات ري', icon: Icons.agriculture_outlined),

    CategoryData(title: 'قطع غيار', icon: Icons.settings_outlined),
    CategoryData(title: 'خراطيم', icon: Icons.water_outlined),
    CategoryData(title: 'رشاشات', icon: Icons.spa_outlined),
    CategoryData(title: 'مضخات', icon: Icons.water_drop_outlined),
  ];
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;

        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('تأكيد الخروج'),
              content: const Text('هل تريد الخروج من التطبيق؟'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('لا'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    SystemNavigator.pop();
                  },
                  child: const Text('نعم'),
                ),
              ],
            );
          },
        );
      },

      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          child: Column(
            children: [
              HomeHeader(),
              SizedBox(height: 20),
              PromoCarousel(),
              SectionTitle(
                title: 'تسوق حسب التصنيف',
                actionText: showAllCategories ? 'عرض أقل' : 'عرض الكل',
                onActionPressed: () {
                  setState(() {
                    showAllCategories = !showAllCategories;
                  });
                },
              ),
              CategoriesGrid(
                categories: categories,
                showAll: showAllCategories,
              ),

              const MostSoldProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
