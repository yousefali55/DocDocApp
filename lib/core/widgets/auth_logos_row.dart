import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthLogosRow extends StatelessWidget {
  const AuthLogosRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AuthButton(
          onPressed: () {},
          assetImage: 'assets/svgs/GoogleLogo.svg',
        ),
        SizedBox(
          width: 32.w,
        ),
        AuthButton(
          onPressed: () {},
          assetImage: 'assets/svgs/FaceBookLogo.svg',
        ),
        SizedBox(
          width: 32.w,
        ),
        AuthButton(
          onPressed: () {},
          assetImage: 'assets/svgs/IcloudLogo.svg',
        ),
      ],
    );
  }
}

class AuthButton extends StatelessWidget {
  const AuthButton({
    Key? key, // Fix the key parameter
    required this.onPressed,
    required this.assetImage,
  }) : super(key: key);

  final void Function() onPressed;
  final String assetImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
        color: Colors.white, // Change to your desired color
        borderRadius: BorderRadius.circular(25.0), // Half of the width/height
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: SizedBox(
            height: 40, width: 40, child: SvgPicture.asset(assetImage)),
      ),
    );
  }
}
