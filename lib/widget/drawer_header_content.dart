
import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/drawer_user_card.dart';
import 'package:zahroobstor/widget/icon_close_drawer.dart';

class DrawerHeaderContent extends StatelessWidget {
  const DrawerHeaderContent({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
        color: Color(0xFF255740),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Icon(
                  Icons.eco_outlined,
                  color: Colors.white,
                  size: 26,
                ),
              ),

              const Spacer(flex: 1),

              const Text(
                'ZAHROOB STORE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Spacer(flex: 3),

              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const IconCloseDrawer(),
              ),
            ],
          ),

          const Spacer(flex: 1),

          const DrawerUserCard(),
        ],
      ),
    );
  }
}

