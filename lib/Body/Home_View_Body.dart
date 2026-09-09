import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zahroobstor/widget/PromoBanner.dart';
import 'package:zahroobstor/widget/category_card.dart';
import 'package:zahroobstor/widget/category_data.dart';
import 'package:zahroobstor/widget/search_field.dart';

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

      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart_outlined, color: Colors.green),
                ),

                const Spacer(),
                Image.asset(
                  'assets/image/zahroob_store_icon_256.png',
                  width: 100,
                  height: 100,
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.green,
                  ),
                ),
              ],
            ),

            SearchField(),
            SizedBox(height: 20),
            SizedBox(
              height: 150,
              child: PageView(
                physics: const BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.fast,
                ),
                children: [PromoBanner(), PromoBanner(), PromoBanner()],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      showAllCategories = !showAllCategories;
                    });
                  },
                  child: Text(showAllCategories ? 'عرض أقل' : 'عرض الكل'),
                ),
                Text(
                  'تسوق حسب التصنيف',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: showAllCategories
                    ? categories.length
                    : min(4, categories.length),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 9,
                  crossAxisSpacing: 9,
                  childAspectRatio: 0.82,
                ),
                itemBuilder: (context, index) {
                  final category = categories[index];

                  return InkWell(
                    onTap: () {
                      // الانتقال لصفحة منتجات هذا التصنيف
                    },
                    borderRadius: BorderRadius.circular(14),
                    child: CategoryCard(
                      title: category.title,
                      icon: category.icon,
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      showAllCategories = !showAllCategories;
                    });
                  },
                  child: Text(showAllCategories ? 'عرض أقل' : 'عرض الكل'),
                ),
                Text(
                  'الأكثر طلبا',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
