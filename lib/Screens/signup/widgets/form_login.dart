import 'package:docdoc/core/Networking/errors/Models/api_error_model.dart';
import 'package:docdoc/Screens/signup/cubit/cubit/sign_up_cubit.dart';
import 'package:docdoc/core/constants/colors.dart';
import 'package:docdoc/core/constants/text_styles.dart';
import 'package:docdoc/core/widgets/auth_logos_row.dart';
import 'package:docdoc/core/widgets/blue_snack_bar.dart';
import 'package:docdoc/core/widgets/or_sign_with.dart';
import 'package:docdoc/core/widgets/repeated_button.dart';
import 'package:docdoc/core/widgets/textformfield_login_signup.dart';
import 'package:docdoc/core/widgets/texts_under_signin_signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpForm extends StatelessWidget {
  final String signinOrUp;
  final ApiErrorModel apiErrorModel;
  final void Function() onTap;
  const SignUpForm({super.key, required this.signinOrUp, required this.onTap, required this.apiErrorModel});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          ScaffoldMessenger.of(context)
              .showSnackBar(CustomSnackBar(ColorsManager.generalBlue,contentText: 'Success',));
        } else if (state is SignUpFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(CustomSnackBar(ColorsManager.red,contentText: 'Failed,${apiErrorModel.message}'));
        }
      },
      builder: (context, state) {
        return Form(
          key: context.read<SignUpCubit>().signUpKey,
          child: Column(
            children: [
              TextFormFieldLogin(
                controller: context.read<SignUpCubit>().userNameController,
                hinttext: 'Username',
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFormFieldLogin(
                controller: context.read<SignUpCubit>().emailController,
                hinttext: 'Email',
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFormFieldLogin(
                controller: context.read<SignUpCubit>().passwordController,
                hinttext: 'Password',
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFormFieldLogin(
                controller:
                    context.read<SignUpCubit>().passwordConfirmController,
                hinttext: 'Confirm password',
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
              state is SignUploading
                  ? const CircularProgressIndicator()
                  : RepeatedButton(
                      TextInButton: 'Login',
                      onPressed: () {
                        context.read<SignUpCubit>().signUp();
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
                signinOrUp: signinOrUp,
                onTap: onTap,
              ),
            ],
          ),
        );
      },
    );
  }
}
