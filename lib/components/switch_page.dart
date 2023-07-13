// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class SwitchPage extends StatelessWidget {
  const SwitchPage({
    super.key,
    required this.onTap, 
    required this.normalText, 
    required this.linkText,
  });

  final Function()? onTap;
  final String normalText;
  final String linkText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(normalText),
        SizedBox(width: 5,),
        GestureDetector(
          onTap: onTap,
          child: Text(
            linkText,
            style: TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}