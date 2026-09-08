import 'package:flutter/material.dart';
import 'package:zahroobstor/Validator/Validator.dart';
import 'package:zahroobstor/app_routes.dart';
import 'package:zahroobstor/widget/AppSnackBar%20.dart';
import 'package:zahroobstor/widget/CustomButton.dart';
import 'package:zahroobstor/widget/SocialMediaIcon.dart';
import 'package:zahroobstor/widget/TextUesr.dart';
import 'package:zahroobstor/widget/orDivider.dart';

class RegisterBody extends StatelessWidget {
  RegisterBody({super.key});

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  static const Color primaryGreen = Color(0xFF2E7D32);
  static const Color darkText = Color(0xFF1B3A1F);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Form(
      key: formKey,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Stack(
          children: [
            // Background - بدون أي تغيير
            Positioned.fill(
              child: Image.asset(
                'assets/image/homeview.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(color: Colors.black.withValues(alpha: 0.15)),
            ),

            Center(
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

                    SizedBox(height: height * 0.02),

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
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          AppSnackBar.success(context, 'Register Success');

                          Navigator.pushReplacementNamed(
                            context,
                            AppRoutes.mainview,
                          );
                        } else {
                          AppSnackBar.error(context, 'Register Failed');
                        }
                      },
                      text: 'SIGN UP',
                      colorbutton: primaryGreen,
                      colorText: Colors.white,
                    ),

                    SizedBox(height: height * 0.02),
                    CustomBoutton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          AppRoutes.mainview,
                        );
                      },
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
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.login);
                          },
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

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: OrDivider(),
                    ),

                    SocialMediaIcon(height: height),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
