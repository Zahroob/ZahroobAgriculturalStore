import 'package:flutter/material.dart';
import 'package:zahroobstor/Validator/Validator.dart';
import 'package:zahroobstor/app_routes.dart';
import 'package:zahroobstor/widget/AppSnackBar%20.dart';
import 'package:zahroobstor/widget/CustomButton.dart';
import 'package:zahroobstor/widget/TextUesr.dart';

class LoginBody extends StatelessWidget {
  LoginBody({super.key});

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Colors
  static const Color primaryGreen = Color(0xFF2E7D32);
  static const Color lightGreen = Color(0xFF66BB6A);
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
            // Background - لا تغيير
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
                      'Login',
                      style: TextStyle(
                        fontSize: 16,
                        color: darkText,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: height * 0.05),

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
                          AppSnackBar.success(context, 'Login Success');

                          Navigator.pushNamed(context, AppRoutes.mainview);
                        } else {
                          AppSnackBar.error(context, 'Login Failed');
                        }
                      },
                      text: 'Login',
                      colorbutton: primaryGreen,
                      colorText: Colors.white,
                    ),

                    SizedBox(height: height * 0.02),
                    CustomBoutton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, AppRoutes.mainview);
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
                          'Don\'t have an account?',
                          style: TextStyle(fontSize: 14, color: darkText),
                        ),

                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                              context,
                              AppRoutes.registration,
                            );
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 14,
                              color: primaryGreen,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: height * 0.10),
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
