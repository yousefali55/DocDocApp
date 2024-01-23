import 'dart:ui';

import 'package:docdoc/core/constants/Colors.dart';
import 'package:docdoc/core/constants/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextsUnderSigninSignUp extends StatelessWidget {
  final void Function() onTap;
  final String signinOrUp;

  const TextsUnderSigninSignUp({required this.onTap, required this.signinOrUp});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 32.h,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'By logging, you agree to our ',
                style: TextStyles.InterW400Size14Grey,
              ),
              TextSpan(
                text: 'Terms & Conditions ',
                style: TextStyles.InterW500Size14Black,
              ),
              TextSpan(
                text: 'and ',
                style: TextStyles.InterW400Size14Grey,
              ),
              TextSpan(
                text: 'Privacy Policy.',
                style: TextStyles.InterW500Size14Black,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 24.h,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Already have an account yet? ',
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: ColorsManager.black,
                ),
              ),
              TextSpan(
                text: signinOrUp,
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: ColorsManager.generalBlue,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = onTap,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
