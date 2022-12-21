import 'package:flutter/material.dart';
import 'package:flutter_responsive_login_ui/widgets/gradient_button.dart';
import 'package:flutter_responsive_login_ui/widgets/login_field.dart';
import 'package:flutter_responsive_login_ui/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'),
              const Text(
                'Sign in.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const SizedBox(height: 50),
              const SocialButton(iconPath: 'assets/svgs/g_logo.svg', label: 'Continue with Google'),
              const SizedBox(height: 20),
              const SocialButton(
                iconPath: 'assets/svgs/f_logo.svg',
                label: 'Continue with Facebook',
                horizontalPadding: 90,
              ),
              const SizedBox(height: 15),
              const Text(
                'or',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 15),
              const LoginField(hintText: 'Email'),
              const SizedBox(height: 15),
              const LoginField(hintText: 'Password'),
              const SizedBox(height: 20),
              const GradientButton(),
            ],
          ),
        ),
      ),
    );
  }
}
