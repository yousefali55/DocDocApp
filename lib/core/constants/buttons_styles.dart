import 'package:docdoc/core/constants/Colors.dart';
import 'package:flutter/material.dart';

class ButtonStyles {
  static const ButtonStyle RepeatedButtonBlue = ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(ColorsManager.GeneralBlue),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    minimumSize: MaterialStatePropertyAll(
      Size(double.infinity, 52),
    ),
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
    ),
  );
}
