import 'package:flutter/material.dart';
import 'package:zahroobstor/Body/Home_View_Body.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 3;

  final List<_NavigationItem> navigationItems = [
    _NavigationItem(
      page: const Center(child: Text('حسابي')),
      icon: Icons.person_outline,
      selectedIcon: Icons.person,
      label: 'حسابي',
    ),
    _NavigationItem(
      page: const Center(child: Text('الدعم')),
      icon: Icons.support_agent_outlined,
      selectedIcon: Icons.support_agent,
      label: 'الدعم',
    ),
    _NavigationItem(
      page: const Center(child: Text('التصنيفات')),
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
