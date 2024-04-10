import 'package:flutter/material.dart';
import 'package:loginsignup/pallete.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  const LoginField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 240,
        maxHeight: 45
      ),
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Pallete.borderColor,
              width: 2
            ),
            borderRadius: BorderRadius.circular(10)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Pallete.gradient2,
              width: 2
            ),
            borderRadius: BorderRadius.circular(10)
            
          ),
          hintText: hintText,
          contentPadding: EdgeInsets.all(10)
        ),
      ),
    );
  }
}