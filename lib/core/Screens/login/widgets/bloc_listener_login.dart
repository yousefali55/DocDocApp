import 'package:docdoc/core/Routing/routes.dart';
import 'package:docdoc/core/Screens/login/cubits/login_cubit/login_cubit.dart';
import 'package:docdoc/core/Screens/login/cubits/login_cubit/login_state.dart';
import 'package:docdoc/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocListenerLogin extends StatelessWidget {
  const BlocListenerLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
        listenWhen: (previous, current) =>
            current is Loading || current is Success || current is Error,
        listener: (context, state) {
          state.whenOrNull(
            loading: () {
              showDialog(
                context: context,
                builder: (context) => const Center(
                  child: CircularProgressIndicator(
                    color: ColorsManager.generalBlue,
                  ),
                ),
              );
            },
            success: (LoginResponse) {
              Navigator.pop(context);
              Navigator.pushNamed(context, Routes.HomeScreen);
            },
            error: (error) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: Text(
                    'Eldoo3r erorr',
                  ),
                  actions: [
                    IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                        },
                      icon: const Icon(Icons.back_hand))
                  ],
                ),
              );
            },
          );
        },
        child: const SizedBox.shrink());
  }
}
