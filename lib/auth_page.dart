import 'package:flutter/material.dart';
import 'package:flutter_auth_app/login.dart';
import 'package:flutter_auth_app/sign_up.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;

  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return Login(
        toggle: toggleScreens,
      );
    } else {
      return SignUp(
        toggle: toggleScreens,
      );
    }
  }
}
