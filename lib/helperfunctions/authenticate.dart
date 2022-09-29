import 'package:flutter/material.dart';
import 'package:murife/views/login.dart';
import 'package:murife/views/signup.dart';

class Authenticate extends StatefulWidget {
  
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;

  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignInScreen(toggleView);
    } else {
      return SignUpScreen(toggleView);
    }
  }
}
