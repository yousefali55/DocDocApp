import 'package:docdoc/core/Screens/login/ui/singin.dart';
import 'package:docdoc/core/constants/text_styles.dart';
import 'package:docdoc/core/widgets/repeated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextAndButtonInonBoearding extends StatelessWidget {
  const TextAndButtonInonBoearding({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          Text(
            'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
            style: TextStyles.InterW400Size10Grey,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 32.h,
          ),
          RepeatedButton(
            TextInButton: 'Get Started',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const LoginScreen(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
