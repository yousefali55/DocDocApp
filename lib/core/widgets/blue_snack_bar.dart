import 'package:docdoc/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomSnackBar extends SnackBar {
  final Color color;
  CustomSnackBar(this.color,  {
    super.key,
    required String contentText,
  }) : super(
          backgroundColor: color, // Use your desired background color
          content: Text(contentText),
        );
}
