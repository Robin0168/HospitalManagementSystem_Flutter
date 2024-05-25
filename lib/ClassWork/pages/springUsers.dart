import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hospital_management_system/ClassWork/model/users.dart';
import 'package:http/http.dart' as http;

class SpringUsers extends StatefulWidget {
  const SpringUsers({super.key});

  @override
  State<SpringUsers> createState() => _dataListState();
}

class _dataListState extends State<SpringUsers> {
  late List<users>? _userModel = [];

  // final String login = "http://192.168.20.46:8080/api/users";
    // final String patientUrl = "http://localhost:8080/v1/api/patient";
  final String patientUrl = "http://192.168.0.111:8080/api/users";

  void _getData() async {
    const storage = FlutterSecureStorage();
    try {
      var value = await storage.read(key: 'token');

      print("------value------");
      print(value);

      var response = await http.get(Uri.parse(patientUrl), headers: {
        "content-type": "application/json",
        "Authorization": "Bearer $value"
      });

      _userModel = usersFromJson(response.body);
      Future.delayed(const Duration(seconds: 1))
          .then((value) => setState(() {}));
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Spring Users:"),
        actions: [
          // IconButton(
          //   onPressed: () {
          //     Navigator.pushNamedAndRemoveUntil(
          //         context, "/login", (route) => false);
          //   },
          //   icon: Icon(Icons.ac_unit),
          // ),
          IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, "/MyHome", (route) => false);
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: _userModel == null  ? const Center(
              child: LinearProgressIndicator(),
            )
          : Center(
              child: ListView.builder(
                itemCount: _userModel!.length,
                itemBuilder: (context, Index) {
                  return ListTile(
                    // leading: FlutterLogo(size: 72.0),
                    leading: Icon(Icons.person),
                    title: Text(_userModel![Index].username.toString()),
                    subtitle: Text(_userModel![Index].email.toString()),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.edit),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.delete),
                        ),
                      ],
                    ),
                    isThreeLine: true,
                  );
                },
              ),
            ),
    );
  }
}
