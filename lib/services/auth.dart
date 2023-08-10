import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'firedb.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

Future<User?> signWithGoogle() async {
  try {
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    final userCredential = await _auth.signInWithCredential(credential);

    final User? user = userCredential.user;

    assert(!user!.isAnonymous);

    final User? currentUser = _auth.currentUser;
    assert(currentUser!.uid == user!.uid);

    debugPrint(user.toString());

    await FireDB().createNewUser(
        user!.displayName.toString(),
        user.email.toString(),
        user.phoneNumber.toString(),
        user.photoURL.toString(),
        user.uid);
  } catch (e) {
    debugPrint("ERROR OCCURRED IN SIGN IN");

    debugPrint(e.toString());
  }
  return null;
}
