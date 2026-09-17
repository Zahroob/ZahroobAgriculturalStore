import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zahroobstor/Body/Home_View_Body.dart';
import 'package:zahroobstor/page/categories_page.dart';
import 'package:zahroobstor/page/my_profily_page.dart';
import 'package:zahroobstor/page/support_page.dart';
import 'package:zahroobstor/widget/Profile_Image.dart';
import 'package:zahroobstor/widget/app_logo.dart';
import 'package:zahroobstor/widget/shopping_cart.dart';
import 'package:zahroobstor/widget/store_appBar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  static const int categoriesTabIndex = 2;
  int currentIndex = 3;
  final StoreAppBar appBar = StoreAppBar(
    photo: ProfileImage(),
    logo: AppLogo(),
    shoppingCart: ShoppingCart(),
  );

  late final List<_NavigationItem> navigationItems = [
    const _NavigationItem(
      page: MyProfilePage(),
      icon: Icons.person_outline,
      selectedIcon: Icons.person,
      label: 'حسابي',
    ),
    const _NavigationItem(
      page: SupportPage(),
      icon: Icons.support_agent_outlined,
      selectedIcon: Icons.support_agent,
      label: 'الدعم',
    ),
    const _NavigationItem(
      page: CategoriesPage(),
      icon: Icons.grid_view_outlined,
      selectedIcon: Icons.grid_view,
      label: 'التصنيفات',
    ),
    _NavigationItem(
      page: HomeViewBody(onShowAllCategories: _openCategoriesTab),
      icon: Icons.home_outlined,
      selectedIcon: Icons.home,
      label: 'الرئيسية',
    ),
  ];

  void _openCategoriesTab() {
    setState(() => currentIndex = categoriesTabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: currentIndex == 0 ? null : appBar,
      // appBar: const StoreAppBar(
      //   photo: ProfileImage(),
      //   logo: AppLogo(),
      //   shoppingCart: ShoppingCart(),
      // ),
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) {
          if (didPop) return;

          _showExitDialog(context);
        },
        child: IndexedStack(
          index: currentIndex,
          children: navigationItems.map((item) => item.page).toList(),
        ),
      ),
      bottomNavigationBar: _buildNavigationBar(),
    );
  }

  Future<dynamic> _showExitDialog(BuildContext context) {
    return showDialog(
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
  }

  NavigationBar _buildNavigationBar() {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      destinations: navigationItems
          .map(
            (item) => NavigationDestination(
              icon: Icon(item.icon),
              selectedIcon: Icon(item.selectedIcon),
              label: item.label,
            ),
          )
          .toList(),
    );
  }
}

class _NavigationItem {
  final Widget page;
  final IconData icon;
  final IconData selectedIcon;
  final String label;

  const _NavigationItem({
    required this.page,
    required this.icon,
    required this.selectedIcon,
    required this.label,
  });
}
