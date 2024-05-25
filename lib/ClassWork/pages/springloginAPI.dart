import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class SpringloginAPI extends StatefulWidget {
  const SpringloginAPI({super.key});

  @override
  State<SpringloginAPI> createState() => _loginAPIState();
}

class _loginAPIState extends State<SpringloginAPI> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  final String login = 'http://192.168.20.46:8080/api/auth/signin';

  void loginData() async {
    var reqBody = {
      "username": emailTextEditingController.text,
      "password": passwordTextEditingController.text
    };

    var response = await http.post(Uri.parse(login),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(reqBody));

    var jsonResponse = jsonDecode(response.body);

    const storage = FlutterSecureStorage();
// to save token in local storage
    await storage.write(key: 'token', value: jsonResponse['jwtToken']);

    print(jsonResponse);
    print(response.statusCode);
  }

  void postData() async {
    var reqBody = {
      "userId": 1000,
      "id": 1000,
      "title": "aaaa",
      "body": "bbbbbbbbbb",
    };

    var response = await http.post(Uri.parse(login),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(reqBody));

    var jsonResponse = jsonDecode(response.body);
    print(jsonResponse);
    print(response.statusCode);
  }

  void putData() async {
    var reqBody = {
      "userId": 1,
      "id": 1,
      "title": "aaaa",
      "body": "bbbbbbbbbb",
    };

    var response = await http.put(Uri.parse(login + '/1'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(reqBody));

    var jsonResponse = jsonDecode(response.body);
    print(jsonResponse);
    print(response.statusCode);
  }

  void deleteData() async {
    var response = await http.delete(
      Uri.parse(login + '/1'),
      headers: {"Content-Type": "application/json"},
    );
    var jsonResponse = jsonDecode(response.body);
    print(jsonResponse);
    print(response.statusCode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/login", (route) => false);
              },
              icon: Icon(Icons.add_a_photo)),
          IconButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/home", (route) => false);
              },
              icon: Icon(Icons.ac_unit_outlined)),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: emailTextEditingController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(
                  fontSize: 14.0,
                ),
                // hintText: "Email",
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
                // hintText: "Email",
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
                  backgroundColor: MaterialStateProperty.all(Colors.yellow),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                    // side: BorderSide(color: Colors.red)
                  ))),
              child: Container(
                height: 50.0,
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: "bolt-semibold",
                        color: Colors.white),
                  ),
                ),
              ),
              onPressed: () {
                loginData();
                if (!emailTextEditingController.text.contains("@")) {
                  // displayToastMessage("Invalid email. ", context);
                } else if (passwordTextEditingController.text.length < 6) {
                  // displayToastMessage("Invalid password. ", context);
                } else {
                  // loginAndAuthenticateUser(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
