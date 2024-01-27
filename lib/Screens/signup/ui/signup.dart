import 'package:docdoc/Screens/signup/cubit/cubit/sign_up_cubit.dart';
import 'package:docdoc/core/constants/text_styles.dart';
import 'package:docdoc/Screens/signup/widgets/form_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Text(
                  'Create Account',
                  style: TextStyles.InterW700Size24Blue,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                  style: TextStyles.InterW400Size14Grey,
                ),
                SizedBox(
                  height: 17.h,
                ),
                SignUpForm(
                  signinOrUp: 'Sign in',
                  onTap: () {
                    context.read<SignUpCubit>().signUp();
                  },
                ),
                SizedBox(
                  height: 20.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}