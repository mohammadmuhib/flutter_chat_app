import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formkey = GlobalKey<FormState>();

  moveToLogin(BuildContext context) async {
    if (_formkey.currentState.validate()) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(children: [
            Image.asset(
              "assets/images/mchat.png",
              fit: BoxFit.cover,
            ),
            Text(
              "Welcome to M.Chat",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        ),
                        hintText: "Enter your name",
                        labelText: "Name"),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "name cannot be empty";
                      }

                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 14.0),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        ),
                        hintText: "Enter email Id",
                        labelText: "Email"),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "emailid cannot be empty";
                      }

                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 14.0),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        ),
                        hintText: "Enter password",
                        labelText: "Password"),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "password cannot be empty";
                      } else if (value.length < 8) {
                        return "password lenght should be atleast 8";
                      }

                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 14.0),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        ),
                        hintText: "Enter confirm password",
                        labelText: "Confirm Password"),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "password cannot be empty";
                      } else if (value.length < 8) {
                        return "password lenght should be atleast 8";
                      }

                      return null;
                    },
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  ElevatedButton(
                    child: Text("Sign up Test by mohammad"),
                    onPressed: () {
                      // Navigator.pushNamed(context, "/Login");
                      if (_formkey.currentState.validate()) {}
                    },
                  ),
                  ElevatedButton(
                    child: Text("Sign up Test"),
                    onPressed: () {
                      // Navigator.pushNamed(context, "/Login");
                      if (_formkey.currentState.validate()) {
                        // mai phirse commit kr raha hu
                        // oh sorry maine file save ni ki
                      }
                    },
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
