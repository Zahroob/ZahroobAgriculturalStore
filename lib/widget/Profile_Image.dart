import 'package:flutter/material.dart';
import 'package:zahroobstor/app_routes.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.myprofile);
      },
      child: Container(
        width: 35,
        height: 35,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('assets/image/myphoto.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
