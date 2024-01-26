import 'package:docdoc/core/Routing/routes.dart';
import 'package:docdoc/Screens/login/widgets/form_login.dart';
import 'package:docdoc/core/constants/text_styles.dart';
import 'package:docdoc/core/widgets/texts_under_signin_signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back',
                      style: TextStyles.InterW700Size24Blue,
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.InterW400Size14Grey,
                ),
                SizedBox(
                  height: 36.h,
                ),
                LoginForm(),
                SizedBox(
                  height: 10.h,
                ),
                TextsUnderSigninSignUp(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.signUp);
                    },
                    signinOrUp: 'Sign Up')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
