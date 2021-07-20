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
              padding:
                  const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 6.0, horizontal: 14.0),
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 6.0, horizontal: 14.0),
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 6.0, horizontal: 14.0),
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

                  // I have codeed here new button as below but before taking pull you should always commit your code
                  // I am doing see
                  ElevatedButton(
                    child: Text("Sign up Test"),
                    onPressed: () {
                      // Navigator.pushNamed(context, "/Login");
                      if (_formkey.currentState.validate()) {
                        // Code if validation pass
                        // aise krte hai validate got it?
                        // isme agr hm valid option dalenge tbhi second option pr click huga ya phle firbase se connect krna huga
                        //second option matlab? matlb ki sign up se login login se homepage
                        // vo ab mmat karo thoda aur flow samjho isko baad me seekhhna ok aur kuch?isko pull or push krna bataye isme to wahi confusion h ok
                        // ye jo maine abhi jitne steps kiya hu ye bas ek baar hi krna hota hai jab project ko first time push krte hai git pe
                        // agar abhi ni aiya hai samajh me toh ye steps bar bar ni krna hota hai toh abhi itna imp ni hai ab maine toh kr diya hai
                        // next ab jab tum push pull kroge toh vo dekho kaise kr raha hu
                        //ok
                        // ab mai kuch chnage kr raha hu code me phir usko push karunga
                        //STEP1: git add .
                        //STEP2: git commit -m "Signup button chnage"
                        //STEP3: git push origin main

                        // clear hua? yes pull ok wait i am cloning your repo into my system and i will add some code from my system
                        // and i will push from my pc into new branch then you can take pull
                        // new branch can be created by anyone
                        // let me add myself to your branch

                        // I am pishing code into your repo from my system
                        // I can also push into main branch
                        // mai me karu ya new branch banau?krdijiye uxsi trh ok

                        // I have pushed
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
