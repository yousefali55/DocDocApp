import 'package:dio/dio.dart';
import 'package:docdoc/Screens/home/ui/home_screen.dart';
import 'package:docdoc/Screens/login/cubit/cubit/sign_in_cubit.dart';
import 'package:docdoc/Screens/login/ui/singin.dart';
import 'package:docdoc/Screens/on_boarding/ui/onboarding_screen.dart';
import 'package:docdoc/Screens/signup/cubit/cubit/sign_up_cubit.dart';
import 'package:docdoc/core/Networking/api_consumer.dart';
import 'package:docdoc/core/Networking/dio_consumer.dart';

import 'package:docdoc/core/Routing/routes.dart';
import 'package:docdoc/Screens/signup/ui/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.OnBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const onBoardingScreen(),
        );
      case Routes.LoginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SignInCubit(DioConsumer(dio: Dio())),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUp:
        return MaterialPageRoute(
            builder: (_) =>  BlocProvider(
                  create: (context) => SignUpCubit(DioConsumer(dio: Dio())),
                  child: const SignUpScreen(),
                ));
      case Routes.HomeScreen:
      return MaterialPageRoute(
        builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('No Routing'),
            ),
          ),
        );
    }
  }
}
