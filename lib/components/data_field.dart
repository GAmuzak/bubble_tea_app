// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class UserDataField extends StatelessWidget {
  final dynamic controller;
  final String hintText;
  final bool obscureText;

  const UserDataField({
    super.key, 
    required this.controller, 
    required this.hintText, 
    required this.obscureText
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:30.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText, 
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white) 
          ),
          fillColor: Colors.brown[200],
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.brown[400])
        ),
      ),
    );
  }
}