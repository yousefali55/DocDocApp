import 'package:docdoc/core/constants/colors.dart';
import 'package:flutter/material.dart';

class BlueSnackBar extends SnackBar {
  BlueSnackBar({
    Key? key,
    required String contentText,
  }) : super(
          key: key,
          backgroundColor: ColorsManager.generalBlue, // Use your desired background color
          content: Text(contentText),
        );
}
