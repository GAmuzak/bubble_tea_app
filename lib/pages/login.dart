// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:bubble_tea_app/components/continue_divider.dart';
import 'package:bubble_tea_app/components/data_field.dart';
import 'package:bubble_tea_app/components/sign_in_button.dart';
import 'package:bubble_tea_app/components/square_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  final Function()? onTap;

  Login({super.key, required this.onTap});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  void signUserIn() async{
    showDialog(context: context, builder: (context){
      return Center(
        child: CircularProgressIndicator(),
      );
    });
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
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
                Image.asset("images/bubble-tea-main.png", height: 160,),
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
                  hintText: "Email Address",
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
                  buttonData: "Sign in",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member?"),
                    SizedBox(width: 5,),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Register Now",
                        style: TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}