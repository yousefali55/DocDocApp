 import 'package:docdoc/core/Screens/login/cubits/login_cubit/login_cubit.dart';
import 'package:docdoc/core/Screens/login/ui/singin.dart';
import 'package:docdoc/core/Screens/on_boarding/ui/onboarding_screen.dart';
import 'package:docdoc/core/Routing/routes.dart';
import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.OnBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const onBoardingScreen(),
        );
      case Routes.LoginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
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
