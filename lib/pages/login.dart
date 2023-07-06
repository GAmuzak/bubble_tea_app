// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bubble_tea_app/components/data_field.dart';
import 'package:bubble_tea_app/components/sign_in_button.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  Login({super.key});

  void signUserIn(){
    print("Test");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // LOGO
              SizedBox(height:40),
              Image.asset("images/bubble-tea-main.png", scale: 3,),
              // Welcome Back Text
              SizedBox(height:40),
              Text(
                "Welcome Back!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.brown[900],
                ),
              ),
              SizedBox(height:40),
              // User Name Textfield
              UserDataField(
                controller: usernameController,
                hintText: "Username/Email Address/Phone Number",
                obscureText: false,
              ),
              SizedBox(height:20),
              // Password Textfield
              UserDataField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),
              SizedBox(height:20),
              // Forgot Password?
              Padding(
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
              // Sign in Button
              SizedBox(height:40),
              SignInButton(
                onTap: signUserIn,
              ),
              // Google / Apple Sign In
              
              // Register Now
            ],
            
          ),
        ),
      ),
    );
  }
}