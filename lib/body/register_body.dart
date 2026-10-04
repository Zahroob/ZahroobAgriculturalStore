import 'package:flutter/material.dart';
import 'package:zahroobstor/app_routes.dart';
import 'package:zahroobstor/widget/auth_background.dart';
import 'package:zahroobstor/widget/register_form.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key});

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
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
          child: RegisterForm(
            formKey: _formKey,
            emailController: _emailController,
            passwordController: _passwordController,
            onGuestPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.mainview);
            },
            onLoginPressed: () {
              Navigator.pushNamed(context, AppRoutes.login);
            },
          ),
        ),
      ),
    );
  }
}
