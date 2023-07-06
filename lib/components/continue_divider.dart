// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ContinueDivier extends StatelessWidget {
  const ContinueDivier({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              thickness: 1,
              color: Colors.brown[500],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0),
            child: Text(
              "Or Continue With",
              style: TextStyle(
                color: Colors.brown,
                
              ),
            ),
          ),
          Expanded(
            child: Divider(
              thickness: 1,
              color: Colors.brown[500],
            ),
          ),
        ],
      ),
    );
  }
}