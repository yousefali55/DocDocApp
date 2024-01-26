import 'package:docdoc/core/Networking/errors/Models/api_error_model.dart';
import 'package:docdoc/Screens/login/cubit/cubit/sign_in_cubit.dart';
import 'package:docdoc/core/constants/colors.dart';
import 'package:docdoc/core/constants/text_styles.dart';
import 'package:docdoc/core/widgets/auth_logos_row.dart';
import 'package:docdoc/core/widgets/blue_snack_bar.dart';
import 'package:docdoc/core/widgets/or_sign_with.dart';
import 'package:docdoc/core/widgets/repeated_button.dart';
import 'package:docdoc/core/widgets/textformfield_login_signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatelessWidget {
  ApiErrorModel? apiErrorModel;
  LoginForm({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          ScaffoldMessenger.of(context)
              .showSnackBar(CustomSnackBar(ColorsManager.generalBlue, contentText: 'Success'));
        } else if (state is SignInFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(CustomSnackBar(ColorsManager.red, contentText: 'Failed,${apiErrorModel!.message}'));
        }
      },
      builder: (context, state) {
        return Form(
          key: context.read<SignInCubit>().signInFormKey,
          child: Column(
            children: [
              TextFormFieldLogin(
                controller: context.read<SignInCubit>().emailController,
                hinttext: 'Email',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter email';
                  }
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFormFieldLogin(
                  controller: context.read<SignInCubit>().passwordController,
                  hinttext: 'Password',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
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
              state is SignInLoading
                  ? const CircularProgressIndicator()
                  : RepeatedButton(
                      TextInButton: 'Login',
                      onPressed: () {
                        context.read<SignInCubit>().signIn();
                      }),
              SizedBox(
                height: 46.h,
              ),
              const OrSignWithRow(),
              SizedBox(
                height: 32.h,
              ),
              const AuthLogosRow(),
              // TextsUnderSigninSignUp(
              //   signinOrUp: signinOrUp,
              //   onTap: onTap,
              // ),
              // const BlocListenerLogin(),
            ],
          ),
        );
      },
    );
  }
}
