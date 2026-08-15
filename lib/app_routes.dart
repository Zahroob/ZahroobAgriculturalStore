
import 'package:flutter/material.dart';
import 'package:zahroobstor/page/HomeView.dart';
import 'package:zahroobstor/page/loginPage.dart';
import 'package:zahroobstor/page/registerPage.dart';

class AppRoutes {
  static const String login = '/login';
  static const String registration = '/registration';
  static const String homeview = '/homeview';

  final Map<String, WidgetBuilder> appRoutes = {
        AppRoutes.homeview :(context) => const HomeView(),

    AppRoutes.login: (context) => const LoginPage(),
    AppRoutes.registration: (context) => const RegisterPage(),
  };
}
