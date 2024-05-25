// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  bool _isNotValided = false;

  @override
  void initState() {
    super.initState();
    initSharedPref();
  }

  void initSharedPref() async {}

  final String login = 'https://jsonplaceholder.typicode.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 35.0,
              ),
              Image(
                image: AssetImage("images/nazmul.png"),
                width: 390.0,
                height: 250.0,
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 1.0,
              ),
              Text(
                "Register here",
                style: TextStyle(fontSize: 25, fontFamily: "bolt-semibold"),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      controller: userNameTextEditingController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "User Name",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      controller: emailTextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      controller: passwordTextEditingController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    //  SizedBox(
                    //   height: 1.0,
                    // ),
                    // TextField(
                    //   controller: passwordTextEditingController,
                    //   obscureText: true,
                    //   decoration: InputDecoration(
                    //     labelText: "Confirm Password",
                    //     labelStyle: TextStyle(
                    //       fontSize: 14.0,
                    //     ),

                    //     hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
                    //   ),
                    //   style: TextStyle(fontSize: 14.0),
                    // ),
                    SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(const Color.fromARGB(255, 114, 123, 129)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ))),
                      child: Container(
                        height: 50.0,
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: "bolt-semibold",
                                color: Colors.black),
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (userNameTextEditingController.text.length < 4) {
                          displayToastMessage(
                            "Invalid username. ",
                          );
                        } else if (!emailTextEditingController.text
                            .contains("@")) {
                          displayToastMessage(
                            "Invalid email. ",
                          );
                        } else if (passwordTextEditingController.text.length <
                            6) {
                          displayToastMessage(
                            "Invalid password. ",
                          );
                        } else {
                          displayToastMessage(
                              userNameTextEditingController.text +
                                  " " +
                                  passwordTextEditingController.text);
                          loginAndAuthenticateUser(context);
                          Navigator.pushNamedAndRemoveUntil(
                              context, "/myLoginScreen", (route) => true);
                          print("Login Button Clicked");
                        }
                      },
                    ),
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {
                    print("Registered Button Clicked");

                    Navigator.pushNamedAndRemoveUntil(
                        context, "/myLoginScreen", (route) => false);
                  },
                  child: Text("Already own an account? Login instead"))
            ],
          ),
        ),
      ),
    );
  }

  loginAndAuthenticateUser(BuildContext context) async {}
}

displayToastMessage(String message) {
  Fluttertoast.showToast(msg: message);
}
