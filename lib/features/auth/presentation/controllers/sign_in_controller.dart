import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInController {
  static Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    log(googleUser!.email.toString());
    log(googleUser.displayName.toString());
    log(googleUser.photoUrl.toString());
    final GoogleSignInAuthentication? googleAuth =
        await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  static Future<UserCredential> signInWithFacebbok() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();

    log(loginResult.accessToken!.tokenString);
    log(loginResult.message.toString());

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);
    log('hello 1');
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithCredential(facebookAuthCredential);
    log(userCredential.additionalUserInfo!.username.toString());
    log(userCredential.user.toString());
    log('hello 2');
    log(userCredential.user!.photoURL.toString());
    return userCredential;
  }
}
