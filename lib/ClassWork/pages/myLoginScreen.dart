import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class MyLoginScreen extends StatefulWidget {
  const MyLoginScreen({Key? key}) : super(key: key);

  @override
  State<MyLoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<MyLoginScreen> {
  TextEditingController usernameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  bool _isNotValided = false;
  late SharedPreferences prefs;
  @override
  void initState() {
    super.initState();
    initSharedPref();
  }

  void initSharedPref() async {
    prefs = await SharedPreferences.getInstance();
  }

  // final String login = 'http://localhost:8080/loginregistration';

  // void loginData() async {
  //   var reqbody = {
  //     "username": usernameTextEditingController.text,
  //     "password": passwordTextEditingController.text
  //   };

  //   var response = await http.post(Uri.parse(login),
  //       headers: {"Content-Type": "application/json"},
  //       body: jsonEncode(reqbody));

  //   var jsonResponse = jsonDecode(response.body);
  //   const storage = FlutterSecureStorage();
  //   await storage.write(key: 'token', value: jsonResponse['jwtToken']);

  //   print(jsonResponse);
  //   print(response.statusCode);
  // }

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
                "Login here",
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
                      controller: usernameTextEditingController,
                      // keyboardType: TextInputType.emailAddress,
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
                    SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color.fromARGB(255, 114, 123, 129)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ))),
                      child: Container(
                        height: 50.0,
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: "bolt-semibold",
                                color: Colors.black),
                          ),
                        ),
                      ),
                      onPressed: () {
                        // if (!emailTextEditingController.text.contains("@")) {
                        //   displayToastMessage(
                        //     "Invalid email. ",
                        //   );
                        // }
                        if (usernameTextEditingController.text.length < 4) {
                          displayToastMessage(
                            "Invalid username. ",
                          );
                        } else if (passwordTextEditingController.text.length <
                            6) {
                          displayToastMessage(
                            "Invalid password. ",
                          );
                        } else {
                          displayToastMessage(usernameTextEditingController.text +
                              " " +
                              passwordTextEditingController.text);
                          loginAndAuthenticateUser(context);
                          // loginData();
                          // print(usernameTextEditingController.text);
                          // print(passwordTextEditingController.text);
                          Navigator.pushNamedAndRemoveUntil(
                              context, "/myHome", (route) => true);
                          print("Login Button Clicked");
                        }
                      },
                    ),
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/registrationScreen", (route) => true);

                    print("Registration Button Clicked");
                  },
                  child: Text("Do not have an Account? Register Here"))
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
