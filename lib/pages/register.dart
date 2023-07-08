// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:bubble_tea_app/components/continue_divider.dart';
import 'package:bubble_tea_app/components/data_field.dart';
import 'package:bubble_tea_app/components/sign_in_button.dart';
import 'package:bubble_tea_app/components/square_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../components/switch_page.dart';

class Register extends StatefulWidget {

  final Function()? onTap;

  Register({super.key, required this.onTap});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  final confirmPasswordController = TextEditingController();

  void signUserIn() async{
    showDialog(context: context, builder: (context){
      return Center(
        child: CircularProgressIndicator(

        ),
      );
    });
    if(passwordController.text != confirmPasswordController.text){
      Navigator.pop(context);
      handleError("Passwords do not match!");
    }
    else{
      try{
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: usernameController.text, 
          password: passwordController.text,
        );
      
        Navigator.pop(context);

      } on FirebaseAuthException catch (e){
        Navigator.pop(context);

        if(e.code == 'user-not-found'){
          handleError("User Not Found");
        }
        else if(e.code == 'wrong-password'){
          handleError("Incorrect Password");
        }
      }
    }
  }

  void handleError(String message){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        backgroundColor: Colors.brown[800],
        title: Center(child: Text(
          message,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          )),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.brown[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // LOGO
                SizedBox(height:20),
                Image.asset("images/bubble-tea-main.png", height: 100,),
                // Welcome Back Text
                SizedBox(height:20),
                Text(
                  "Let's create a new account!",
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
                  hintText: "Enter Your Email Address",
                  obscureText: false,
                ),
                SizedBox(height:20),
                // Password Textfield
                UserDataField(
                  controller: passwordController,
                  hintText: "Enter New Password",
                  obscureText: true,
                ),
                SizedBox(height:20),
                UserDataField(
                  controller: confirmPasswordController,
                  hintText: "Confirm Password",
                  obscureText: true,
                ),
                SizedBox(height:20),
                // Sign in Button
                SizedBox(height:40),
                SignInButton(
                  onTap: signUserIn,
                  buttonData: "Sign Up",
                ),
                SizedBox(height:40),
                // Google / Apple Sign In
                ContinueDivier(),
                SizedBox(height:40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: "images/google-logo-colored.png"),
                    SizedBox(width: 30,),
                    SquareTile(imagePath: "images/apple-logo.png"),
                  ],
                ),
                SizedBox(height:20),
                // Register Now
                SwitchPage(
                  onTap: widget.onTap,
                  normalText: "Already a Member?",  
                  linkText: "Login Now",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}