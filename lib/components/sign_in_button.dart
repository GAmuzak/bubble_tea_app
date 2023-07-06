// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final Function()? onTap;
  
  const SignInButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Container(
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.brown[800],
            borderRadius: BorderRadius.circular(10.0)
          ),
          child: Center(
            child: Text(
              "Sign In",
              style: TextStyle(
                color: Colors.brown[100],
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
