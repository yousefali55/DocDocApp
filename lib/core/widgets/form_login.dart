import 'package:docdoc/core/Screens/signup.dart';
import 'package:docdoc/core/constants/text_styles.dart';
import 'package:docdoc/core/widgets/auth_logos_row.dart';
import 'package:docdoc/core/widgets/or_sign_with.dart';
import 'package:docdoc/core/widgets/repeated_button.dart';
import 'package:docdoc/core/widgets/textformfield_login_signup.dart';
import 'package:docdoc/core/widgets/texts_under_signin_signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatelessWidget {
  final String signinOrUp;
  final void Function() onTap;
  const LoginForm({super.key, required this.signinOrUp, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormFieldLogin(
            hinttext: 'Email',
          ),
          SizedBox(
            height: 20.h,
          ),
          TextFormFieldLogin(
            hinttext: 'Password',
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            children: [
              Checkbox(
                value: true,
                onChanged: (value) => null,
              ),
              Text(
                'Remeber me',
                style: TextStyles.InterW400Size14Grey,
              ),
              const Spacer(),
              Text(
                'Forgot Password?',
                style: TextStyles.InterW400size12Blue,
              ),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          RepeatedButton(TextInButton: 'Login', onPressed: () {}),
          SizedBox(
            height: 46.h,
          ),
          OrSignWithRow(),
          SizedBox(
            height: 32.h,
          ),
          AuthLogosRow(),
          TextsUnderSigninSignUp(
            signinOrUp: signinOrUp,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
