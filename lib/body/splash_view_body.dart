import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/auth_background.dart';
import 'package:zahroobstor/widget/splash_content.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthBackground(child: SplashContent());
  }
}
