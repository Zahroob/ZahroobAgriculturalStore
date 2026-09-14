import 'package:flutter/material.dart';

class StoreAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget photo;
  final Widget logo;
  final Widget shoppingCart;
  final bool showBackButton;
  final VoidCallback? onCartPressed;
  final VoidCallback? onBackPressed;

  const StoreAppBar({
    super.key,
    required this.photo,
    required this.logo,
    required this.shoppingCart,
    this.showBackButton = false,
    this.onCartPressed,
    this.onBackPressed,
  });

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AppBar(
        clipBehavior: Clip.antiAlias,
        toolbarHeight: 70,
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: const Color(0xFFF7F3ED),
        surfaceTintColor: Colors.transparent,
        centerTitle: true,

        leading: showBackButton
            ? IconButton(
                onPressed: onBackPressed ?? () => Navigator.maybePop(context),
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Color(0xFF156651),
                ),
              )
            : Padding(padding: const EdgeInsets.all(10), child: photo),

        title: logo,

        actions: [IconButton(onPressed: onCartPressed, icon: shoppingCart)],

        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
        ),
      ),
    );
  }
}
