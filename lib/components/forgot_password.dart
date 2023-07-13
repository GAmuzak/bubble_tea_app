// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  final Function()? onTap;

  const ForgotPassword({
    super.key, 
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Forgot Password?",
              style: TextStyle(
                color: Colors.brown[500], 
                decoration: TextDecoration.underline,
                decorationThickness: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}