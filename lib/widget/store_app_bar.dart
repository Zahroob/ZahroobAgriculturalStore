import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/app_logo.dart';

class StoreAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StoreAppBar({
    super.key,
    this.title = '',
    this.logo = const AppLogo(),
    this.showLogo = true,
    this.showBackButton = false,
    this.showMenuButton = true,
    this.leading,
    this.actions = const [],
    this.onMenuPressed,
    this.onCartPressed,
    this.onBackPressed,
  });

  final String title;
  final Widget logo;
  final bool showLogo;
  final bool showBackButton;
  final bool showMenuButton;
  final Widget? leading;
  final List<Widget> actions;
  final VoidCallback? onMenuPressed;
  final VoidCallback? onCartPressed;
  final VoidCallback? onBackPressed;

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    final Widget? leadingWidget =
        leading ??
        (showBackButton
            ? BackButton(
                onPressed:
                    onBackPressed ?? () => Navigator.of(context).maybePop(),
              )
            : showLogo
            ? Padding(padding: const EdgeInsets.only(left: 8), child: logo)
            : null);

    return Directionality(
      textDirection: TextDirection.ltr,
      child: AppBar(
        automaticallyImplyLeading: false,
        clipBehavior: Clip.antiAlias,
        toolbarHeight: preferredSize.height,
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: const Color(0xFFF7F3ED),
        surfaceTintColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Color(0xFF156651)),
        centerTitle: true,
        leadingWidth: 75,
        leading: leadingWidget,
        title: title.isEmpty
            ? null
            : Text(title, style: const TextStyle(color: Color(0xFF156651))),
        actions: [
          ...actions,
          if (onCartPressed != null)
            IconButton(
              onPressed: onCartPressed,
              tooltip: 'السلة',
              icon: const Icon(Icons.shopping_cart_outlined),
            ),
          if (showMenuButton)
            Builder(
              builder: (context) {
                final scaffold = Scaffold.maybeOf(context);
                final openMenu =
                    onMenuPressed ??
                    (scaffold?.hasEndDrawer == true
                        ? scaffold!.openEndDrawer
                        : null);
                if (openMenu == null) return const SizedBox.shrink();
                return IconButton(
                  onPressed: openMenu,
                  tooltip: 'القائمة',
                  icon: const Icon(Icons.menu),
                );
              },
            ),
          // Keep AppBar from inserting an automatic end-drawer button.
          const SizedBox.shrink(),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
        ),
      ),
    );
  }
}
