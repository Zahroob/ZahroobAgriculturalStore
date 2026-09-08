import 'package:flutter/material.dart';
import 'package:zahroobstor/Body/Home_View_Body.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;

  final List<_NavigationItem> navigationItems = [
    _NavigationItem(
      page: const HomeViewBody(),
      icon: Icons.home_outlined,
      selectedIcon: Icons.home,
      label: 'الرئيسية',
    ),
    _NavigationItem(
      page: const Center(child: Text('التصنيفات')),
      icon: Icons.category_outlined,
      selectedIcon: Icons.category,
      label: 'التصنيفات',
    ),
    _NavigationItem(
      page: const Center(child: Text('السلة')),
      icon: Icons.shopping_cart_outlined,
      selectedIcon: Icons.shopping_cart,
      label: 'السلة',
    ),
    _NavigationItem(
      page: const Center(child: Text('طلباتي')),
      icon: Icons.receipt_long_outlined,
      selectedIcon: Icons.receipt_long,
      label: 'طلباتي',
    ),
    _NavigationItem(
      page: const Center(child: Text('حسابي')),
      icon: Icons.person_outline,
      selectedIcon: Icons.person,
      label: 'حسابي',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationItems[currentIndex].page,
      bottomNavigationBar: NavigationBar(
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
      ),
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
