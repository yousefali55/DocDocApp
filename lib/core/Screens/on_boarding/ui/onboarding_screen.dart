import 'package:docdoc/core/widgets/row_in_onboarding.dart';
import 'package:docdoc/core/Screens/on_boarding/widgets/stack_with_doctor_pic.dart';
import 'package:docdoc/core/widgets/text_and_button_onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class onBoardingScreen extends StatelessWidget {
  const onBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              RowInOnboardingScreen(),
              SizedBox(
                height: 40.h,
              ),
              StackWithDoctorPic(),
              SizedBox(
                height: 18.h,
              ),
              TextAndButtonInonBoearding()
            ],
          ),
        ),
      ),
    );
  }
}
