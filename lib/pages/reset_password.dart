// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../components/data_field.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final usernameController = TextEditingController();
  
  Future passwordReset() async{
    try{
      await FirebaseAuth.instance.
      sendPasswordResetEmail(email: usernameController.text.trim());
    } on FirebaseAuthException catch (e){
      print(e);
    }
  }

  @override
  void dispose(){
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[800],
        elevation: 2,
      ),
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.brown[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.mail, size: 200),
          SizedBox(height: 40),
          Text("Enter your email and we will send you a password reset link"),
          SizedBox(height: 20),
          UserDataField(
            controller: usernameController,
            hintText: "Email Address",
            obscureText: false,
          ),
          SizedBox(height: 20),
          MaterialButton(onPressed: (){
              //TODO: Send mail
            },
            color: Colors.brown,
            child: Text("Send Reset Link"),
          ),
          SizedBox(height: 140),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Remember password?"),
              SizedBox(width: 5,),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Go back to Login",
                  style: TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}