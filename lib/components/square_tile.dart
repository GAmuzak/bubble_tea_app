// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;

  const SquareTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        // color: Colors.brown[200],
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Image.asset(imagePath, height: 50,),
    );
  }
}