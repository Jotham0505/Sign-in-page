import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginsignup/pallete.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final double horizontalPadding;
  final VoidCallback onPressed;
  const SocialButton({super.key, required this.iconPath, required this.label, this.horizontalPadding = 30, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: SvgPicture.asset(iconPath, width: 25,color: Pallete.whiteColor,),
      label: Text(label,style: TextStyle(color: Pallete.whiteColor, fontSize: 17,  ),),
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: horizontalPadding),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Pallete.borderColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10)
        )
      ),
    );
  }
}