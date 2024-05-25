import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hospital_management_system/ClassWork/model/doctors.dart';
import 'package:http/http.dart' as http;

class Doctors extends StatefulWidget {
  const Doctors({super.key});

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  late List<doctors>? _doctroModel = [];

  // final String doctorsUrl = "http://192.168.20.46:8080/api/doctors";
  //  final String doctorsUrl = "https://render2-les1.onrender.com/v1/api/doctor";
  // final String doctorsUrl = "http://localhost:8080/v1/api/doctor";
  final String doctorsUrl = "http://192.168.20.40:8080/v1/api/doctor";

  void _getDoctors() async {
    const storage = FlutterSecureStorage();
    try {
      var value = await storage.read(key: 'token');
      print("------value------");
      print(value);
      var response = await http.get(Uri.parse(doctorsUrl), headers: {
        "content-type": "application/json",
        "Authorization": "Bearer $value"
      });
      _doctroModel = doctorsFromJson(response.body);
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
    _getDoctors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hospital Doctors:"),
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
                  context, "/myHome", (route) => false);
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: _doctroModel == null
          ? const Center(
              child: LinearProgressIndicator(),
            )
          : Center(
              child: ListView.builder(
                itemCount: _doctroModel!.length,
                itemBuilder: (context, Index) {
                  return ListTile(
                    // leading: FlutterLogo(size: 72.0),
                    leading: Icon(Icons.person),
                    title: Text(_doctroModel![Index].name.toString()),
                    subtitle: Text(_doctroModel![Index].mobile.toString()),
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
