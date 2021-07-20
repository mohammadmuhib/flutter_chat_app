import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/mchat.png",
                fit: BoxFit.cover,
              ),
              Text(
                "Welcome to MChat",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 32.0, horizontal: 16.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0)),
                          ),
                          hintText: "Enter username",
                          labelText: "Username"),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "username cannot be empty";
                        }

                        return null;
                      },
                      onChanged: (value) {},
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6.0, horizontal: 14.0),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0)),
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
                    SizedBox(
                      height: 25.0,
                    ),
                    ElevatedButton(
                      child: Text("Log in"),
                      onPressed: () {
                        Navigator.pushNamed(context, "/Home");
                      },
                    ),
                    ElevatedButton(
                      child: Text("Create New Account"),
                      onPressed: () {
                        Navigator.pushNamed(context, "/Signup");
                      },
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Forgotten password ?"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
