// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService{
  Future<UserCredential> signInWithGoogle() async{
    //begin interactive sign in
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
    //obtain auth details
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;
    //create a new credential
    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );
    //sign in
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
