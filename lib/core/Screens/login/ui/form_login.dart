import 'package:docdoc/core/constants/text_styles.dart';
import 'package:docdoc/core/widgets/auth_logos_row.dart';
import 'package:docdoc/core/widgets/or_sign_with.dart';
import 'package:docdoc/core/widgets/repeated_button.dart';
import 'package:docdoc/core/widgets/textformfield_login_signup.dart';
import 'package:docdoc/core/widgets/texts_under_signin_signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatefulWidget {
  final String signinOrUp;
  final void Function() onTap;
  const LoginForm({super.key, required this.signinOrUp, required this.onTap});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    //this is line error
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          TextFormFieldLogin(
            hinttext: 'Email',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter email';
              }
            },
            // controller: context.read<LoginCubit>().emailController,
          ),
          SizedBox(
            height: 20.h,
          ),
          TextFormFieldLogin(
              hinttext: 'Password',
              // controller: context.read<LoginCubit>().passwordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter email';
                }
              }),
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
          RepeatedButton(
              TextInButton: 'Login',
              onPressed: () {
              }),
          SizedBox(
            height: 46.h,
          ),
          const OrSignWithRow(),
          SizedBox(
            height: 32.h,
          ),
          const AuthLogosRow(),
          TextsUnderSigninSignUp(
            signinOrUp: widget.signinOrUp,
            onTap: widget.onTap,
          ),
          // const BlocListenerLogin(),
        ],
      ),
    );
  }
}
