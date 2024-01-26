import 'package:dio/dio.dart';
import 'package:docdoc/core/Networking/errors/Models/api_error_model.dart';
import 'package:docdoc/core/Routing/app_router.dart';
import 'package:docdoc/core/Routing/routes.dart';
import 'package:docdoc/Screens/signup/cubit/cubit/sign_up_cubit.dart';
import 'package:docdoc/core/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocDoc extends StatelessWidget {
  final AppRouter appRouter;

  const DocDoc({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: BlocProvider(
        create: (context) => SignUpCubit(Dio(),ApiErrorModel()),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: ColorsManager.generalBlue,
            scaffoldBackgroundColor: ColorsManager.white,
          ),
          initialRoute: Routes.OnBoardingScreen,
          onGenerateRoute: appRouter.generateRoute,
        ),
      ),
    );
  }
}
