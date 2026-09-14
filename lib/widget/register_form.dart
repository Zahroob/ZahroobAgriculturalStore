import 'package:flutter/material.dart';
import 'package:zahroobstor/Validator/Validator.dart';
import 'package:zahroobstor/widget/App_SnackBar%20.dart';
import 'package:zahroobstor/widget/Custom_Button.dart';
import 'package:zahroobstor/widget/SocialMediaIcon.dart';
import 'package:zahroobstor/widget/TextUesr.dart';
import 'package:zahroobstor/widget/or_Divider.dart';

class RegisterForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onGuestPressed;
  final VoidCallback onLoginPressed;

  static const Color primaryGreen = Color(0xFF2E7D32);
  static const Color darkText = Color(0xFF1B3A1F);

  const RegisterForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.onGuestPressed,
    required this.onLoginPressed,
  });

  void _submit(BuildContext context) {
    if (formKey.currentState!.validate()) {
      AppSnackBar.success(context, 'Register Success');
    } else {
      AppSnackBar.error(context, 'Register Failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 16,
                color: darkText,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: height * 0.05),
            TextFromUser(
              validator: AuthValidators.validateEmail,
              controller: emailController,
              label: 'Email',
              icon: const Icon(Icons.person, color: primaryGreen),
            ),
            TextFromUser(
              validator: AuthValidators.validatePassword,
              controller: passwordController,
              icon2: const Icon(Icons.visibility, color: primaryGreen),
              label: 'Password',
              obscureText: true,
              icon: const Icon(Icons.lock, color: primaryGreen),
            ),
            CustomBoutton(
              onPressed: () => _submit(context),
              text: 'SIGN UP',
              colorbutton: primaryGreen,
              colorText: Colors.white,
            ),
            SizedBox(height: height * 0.02),
            CustomBoutton(
              onPressed: onGuestPressed,
              text: 'تسجيل كضيف',
              colorbutton: primaryGreen,
              colorText: Colors.white,
            ),
            SizedBox(height: height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account ?',
                  style: TextStyle(fontSize: 12, color: darkText),
                ),
                TextButton(
                  onPressed: onLoginPressed,
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 12,
                      color: primaryGreen,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: OrDivider(),
            ),
            SocialMediaIcon(height: height),
          ],
        ),
      ),
    );
  }
}
