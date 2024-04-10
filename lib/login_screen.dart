import 'package:flutter/material.dart';
import 'package:loginsignup/widgets/gradient_button.dart';
import 'package:loginsignup/widgets/login_field.dart';
import 'package:loginsignup/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/signin_balls.png'),
            SizedBox(
              height: 100,
            ),
            Text(
              'Sign in.',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SocialButton(
              iconPath: 'assets/images/svgs/g_logo.svg',
              label: 'Continue with Google', onPressed: () {  },
            ),
            SizedBox(
              height: 10,
            ),
            SocialButton(
              iconPath: 'assets/images/svgs/f_logo.svg',
              label: 'Continue with Facebook',
              horizontalPadding: 20, onPressed: () {  },
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'or',
              style: TextStyle(
                fontSize: 17
              ),
            ),
            SizedBox(
              height: 12,
            ),
            LoginField(hintText: 'Email',),
            SizedBox(
              height: 12,
            ),
            LoginField(hintText: 'Password',),
            SizedBox(
              height: 15,
            ),
            GradientButton()
          ],
        ),
      ),
    );
  }
}