import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RowInOnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/Icon.svg'),
        SizedBox(
          width: 8.w,
        ),
        Container(
          width: 95.w,
          height: 20.h,
          child: Image.asset(
            'assets/images/Docdoc.png',
          ),
        )
      ],
    );
  }
}
