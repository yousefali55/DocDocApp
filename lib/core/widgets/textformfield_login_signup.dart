import 'package:docdoc/core/constants/Colors.dart';
import 'package:docdoc/core/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormFieldLogin extends StatelessWidget {
  final String hinttext;
  final Function(String?)? validator;
  final TextEditingController? controller;

  const TextFormFieldLogin(
      {super.key, required this.hinttext, this.controller, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          hintText: hinttext,
          hintStyle: TextStyles.InterW400Size14Grey,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: ColorsManager.grey,
              width: 1.3.w,
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                16,
              ),
              borderSide: BorderSide(
                color: ColorsManager.generalBlue,
                width: 1.3.w,
              ))),
    );
  }
}
