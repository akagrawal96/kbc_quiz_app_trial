import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kbc_quiz_app/services/auth.dart';
import 'package:overlay_support/overlay_support.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();

    InternetConnectionChecker().onStatusChange.listen((status) {
      final connected = status == InternetConnectionStatus.connected;
      showSimpleNotification(
          Text(connected ? "CONNECTED TO INTERNET" : "NO INTERNET"),
          background: Colors.green);
    });
  }

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
            SignInButton(Buttons.GoogleDark, onPressed: () async {
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
