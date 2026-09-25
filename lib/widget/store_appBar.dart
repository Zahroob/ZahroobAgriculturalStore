import 'package:flutter/material.dart';

class StoreAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget logo;
  final bool showBackButton;
final String title;
  final VoidCallback? onCartPressed;
  final VoidCallback? onBackPressed;

  const StoreAppBar({
    super.key,
    required this.logo,
    this.showBackButton = false,
    this.onCartPressed,
    this.onBackPressed, 
    required this.title,
  });

  @override

  
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: AppBar(
        clipBehavior: Clip.antiAlias,
        toolbarHeight: 70,
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: const Color(0xFFF7F3ED),
        surfaceTintColor: Colors.transparent,

        centerTitle: true,
        flexibleSpace: SafeArea(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: SizedBox(width: 75, height: 75, child: logo),
            ),
          ),
        ),

        title:  Text(title, style: TextStyle(color: Color(0xFF156651))),

        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: const Icon(Icons.menu, color: Color(0xFF156651)),
              );
            },
          ),
        ],

        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
        ),
      ),
    );
  }
}
