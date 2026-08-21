import 'package:flutter/material.dart';
import 'package:zahroobstor/page/Home_View.dart';
import 'package:zahroobstor/page/Login_Page.dart';
import 'package:zahroobstor/page/Splash_View.dart';
import 'package:zahroobstor/page/register_Page.dart';

class AppRoutes {
  static const String login = '/login';
  static const String registration = '/registration';
  static const String Splash = '/SplashView';
  static const String homeview = '/homeview';

  final Map<String, WidgetBuilder> appRoutes = {
    AppRoutes.Splash: (context) => const SplashView(),
    AppRoutes.login: (context) => const LoginPage(),
    AppRoutes.registration: (context) => const RegisterPage(),
    AppRoutes.homeview: (context) => const HomeView(),
  };
}
