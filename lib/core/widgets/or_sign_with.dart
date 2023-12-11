import 'package:docdoc/core/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OrSignWithRow extends StatelessWidget {
  const OrSignWithRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const LighterGreyLine(),
        Text(
            textAlign: TextAlign.center,
            'Or sign in with',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: ColorsManager.grey9E,
            )),
        const LighterGreyLine()
      ],
    );
  }
}

class LighterGreyLine extends StatelessWidget {
  const LighterGreyLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.h,
      width: 125,
      color: ColorsManager.grey9E,
    );
  }
}
