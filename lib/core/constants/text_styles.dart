import 'package:docdoc/core/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles{
  static  TextStyle InterW700Size32 = GoogleFonts.inter(
    fontWeight: FontWeight.w700,
    fontSize: 32,
    color: ColorsManager.GeneralBlue,
  );
  static TextStyle InterW400Size10 = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 11,
    color: ColorsManager.grey,
  );
  static TextStyle InterSemiW600Size16 = GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: Colors.white,
  );
}