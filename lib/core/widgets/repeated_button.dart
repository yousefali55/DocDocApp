import 'package:docdoc/core/constants/buttons_styles.dart';
import 'package:docdoc/core/constants/text_styles.dart';
import 'package:flutter/material.dart';

class RepeatedButton extends StatelessWidget {
  final String TextInButton;
  const RepeatedButton({super.key, required this.TextInButton});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyles.RepeatedButtonBlue,
      onPressed: (){},
      child: Text(
        TextInButton,
        style: TextStyles.InterSemiW600Size16,
      ));
  }
}
