import 'package:flutter/material.dart';
import 'package:zahroobstor/app_routes.dart';
import 'package:zahroobstor/widget/auth_background.dart';
import 'package:zahroobstor/widget/login_form.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: FocusScope.of(context).unfocus,
      child: AuthBackground(
        child: Center(
          child: LoginForm(
            formKey: _formKey,
            emailController: _emailController,
            passwordController: _passwordController,
            onGuestPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.mainview);
            },
            onRegisterPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.registration);
            },
          ),
        ),
      ),
    );
  }
}
