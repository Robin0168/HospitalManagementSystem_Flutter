import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hospital_management_system/ClassWork/model/department.dart';
import 'package:hospital_management_system/ClassWork/model/doctors.dart';
import 'package:hospital_management_system/ClassWork/model/patients.dart';
import 'package:http/http.dart' as http;

class AllDepartment extends StatefulWidget {
  const AllDepartment({super.key});

  @override
  State<AllDepartment> createState() => _AllDepartmentState();
}

class _AllDepartmentState extends State<AllDepartment> {
  late List<Department>? _departmentModel = [];

  // final String doctorsUrl = "http://192.168.20.46:8080/api/doctors";
  //  final String doctorsUrl = "https://render2-les1.onrender.com/v1/api/doctor";
  // final String doctorsUrl = "http://localhost:8080/v1/api/doctor";
  final String departmentsUrl =
      "http://192.168.20.40:8080/v1/api/hospitalDepartment";

  void _getDepartment() async {
    const storage = FlutterSecureStorage();
    try {
      var value = await storage.read(key: 'token');
      print("------value------");
      print(value);
      var response = await http.get(Uri.parse(departmentsUrl), headers: {
        "content-type": "application/json",
        "Authorization": "Bearer $value"
      });
      _departmentModel = departmentFromJson(response.body);
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
    _getDepartment();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hospital Departments:"),
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
      body: _departmentModel == null
          ? const Center(
              child: LinearProgressIndicator(),
            )
          : Center(
              child: ListView.builder(
                itemCount: _departmentModel!.length,
                itemBuilder: (context, Index) {
                  return ListTile(
                    // leading: FlutterLogo(size: 72.0),
                    leading: Icon(Icons.person),
                    title: Text(_departmentModel![Index].name.toString()),
                    subtitle: Text(_departmentModel![Index].phone.toString()),
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
