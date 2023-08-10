import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:kbc_quiz_app/services/auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/kbc.png"),
            const SizedBox(
              height: 35,
            ),
            const Center(
              child: Text(
                "Welcome \n To KBC Quiz App",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SignInButton(Buttons.GoogleDark, onPressed: () async{
              await signWithGoogle();
            }),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: const Text("Continue with Google"),
            // ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "By Continuing, You are Agree  with Our TnC",
              style: TextStyle(color: Colors.white),
            )
          ],
        )));
  }
}
