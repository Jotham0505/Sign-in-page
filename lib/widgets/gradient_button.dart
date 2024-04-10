import 'package:flutter/material.dart';
import 'package:loginsignup/pallete.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Pallete.gradient1,
          Pallete.gradient2,
          Pallete.gradient3
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Sign in',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600
          ),
        ),
        style: ElevatedButton.styleFrom(
          fixedSize: Size(240, 45),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        )
      ),
    );
  }
}