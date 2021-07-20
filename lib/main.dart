import 'package:flutter/material.dart';
import 'package:m_chat/pages/home_screen.dart';
import 'package:m_chat/pages/login_screen.dart';
import 'package:m_chat/pages/signup_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/Login",
      routes: {
        "/": (context) => SignupScreen(),
        "/Home": (context) => HomeScreen(),
        "/Login": (context) => LoginScreen(),
        "/Signup": (context) => SignupScreen(),
      },
    );
  }
}
