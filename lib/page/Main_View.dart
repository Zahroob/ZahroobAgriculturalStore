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
  int currentIndex = 3;

  final List<_NavigationItem> navigationItems = [
    _NavigationItem(
      page: const MyProfilePage(),
      icon: Icons.person_outline,
      selectedIcon: Icons.person,
      label: 'حسابي',
    ),
    _NavigationItem(
      page: const SupportPage(),
      icon: Icons.support_agent_outlined,
      selectedIcon: Icons.support_agent,
      label: 'الدعم',
    ),
    _NavigationItem(
      page: const CategoriesPage(),
      icon: Icons.grid_view_outlined,
      selectedIcon: Icons.grid_view,
      label: 'التصنيفات',
    ),
    _NavigationItem(
      page: const HomeViewBody(),
      icon: Icons.home_outlined,
      selectedIcon: Icons.home,
      label: 'الرئيسية',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StoreAppBar(
        photo: ProfileImage(),
        logo: AppLogo(),
        shoppingCart: ShoppingCart(),
      ),
      // AppBar(
      //   clipBehavior: Clip.antiAlias,

      //   shape: const RoundedRectangleBorder(
      //     borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
      //   ),
      //   flexibleSpace: AnimatedContainer(
      //     duration: const Duration(milliseconds: 250),
      //     color: isScrolled ? Color(0xFFF7F3ED) : Colors.white,
      //   ),
      //   toolbarHeight: 70,
      //   elevation: 0,
      //   scrolledUnderElevation: 0,
      //   backgroundColor: Colors.transparent,
      //   surfaceTintColor: Colors.transparent,

      //   title: const HomeHeader(),
      //   centerTitle: true,
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
