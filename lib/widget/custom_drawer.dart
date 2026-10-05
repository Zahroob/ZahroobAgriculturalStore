import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/drawer_header_content.dart';
import 'package:zahroobstor/widget/drawer_menu_item.dart';
import 'package:zahroobstor/widget/drawer_section_title.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Drawer(
        child: Column(
          children: [
            const DrawerHeaderContent(),

            Expanded(
              child: ListView(
                children: [
                  const DrawerSectionTitle(title: 'الصفحات'),

                  DrawerMenuItem(
                    title: 'الرئيسية',
                    icon: Icons.home_outlined,
                    iconColor: Colors.green,
                    onTap: () {},
                  ),

                  DrawerMenuItem(
                    title: 'التصنيفات',
                    icon: Icons.category_outlined,
                    iconColor: Colors.green,
                    onTap: () {},
                  ),

                  DrawerMenuItem(
                    title: 'السلة',
                    icon: Icons.shopping_cart_outlined,
                    iconColor: Colors.green,
                    onTap: () {},
                  ),

                  DrawerMenuItem(
                    title: 'الدعم',
                    icon: Icons.support_agent_outlined,
                    iconColor: Colors.green,
                    onTap: () {},
                  ),

                  DrawerMenuItem(
                    title: 'حسابي',
                    icon: Icons.person_outline,
                    iconColor: Colors.green,
                    onTap: () {},
                  ),

                  Divider(
                    height: 1,
                    thickness: 1,
                    indent: 16,
                    endIndent: 16,
                    color: const Color(0xFF000000).withValues(alpha: 0.15),
                  ),

                  const DrawerSectionTitle(title: 'التصنيفات'),

                  DrawerMenuItem(
                    title: 'الجميع',
                    icon: Icons.grid_view_rounded,
                    onTap: () {},
                  ),

                  DrawerMenuItem(
                    title: 'أسمدة',
                    icon: Icons.eco_outlined,
                    onTap: () {},
                  ),

                  DrawerMenuItem(
                    title: 'بذور',
                    icon: Icons.grass_outlined,
                    onTap: () {},
                  ),

                  DrawerMenuItem(
                    title: 'مغذيات',
                    icon: Icons.science_outlined,
                    onTap: () {},
                  ),

                  DrawerMenuItem(
                    title: 'حشري',
                    icon: Icons.bug_report_outlined,
                    onTap: () {},
                  ),

                  DrawerMenuItem(
                    title: 'فطري',
                    icon: Icons.coronavirus_outlined,
                    onTap: () {},
                  ),

                  DrawerMenuItem(
                    title: 'أكاروسي',
                    icon: Icons.pest_control_outlined,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
