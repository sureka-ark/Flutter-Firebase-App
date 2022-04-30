import 'package:flutter/material.dart';
import 'package:flutter_auth_app/home_page.dart';
import 'package:flutter_auth_app/loading.dart';
import 'package:flutter_auth_app/login.dart';
import 'package:flutter_auth_app/main_page.dart';
import 'package:flutter_auth_app/sign_up.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MainPage(),
    );
  }
}
