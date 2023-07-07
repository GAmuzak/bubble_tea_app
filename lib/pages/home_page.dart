// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void signUserOut(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    var user = FirebaseAuth.instance.currentUser?.email.toString();
    return GestureDetector(
      onTap: signUserOut,
      child: Scaffold(
        body: Center(
          child: Text("$user Signed In; \nClick anywhere to sign out"),
        ),
      ),
    );
  }
}