import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hospital_management_system/ClassWork/model/doctors.dart';
import 'package:hospital_management_system/ClassWork/model/patients.dart';
import 'package:hospital_management_system/ClassWork/pages/patientsInvoice.dart';
import 'package:hospital_management_system/ClassWork/pages/testInvoice.dart';
import 'package:http/http.dart' as http;

class AllPatient extends StatefulWidget {
  const AllPatient({super.key});

  @override
  State<AllPatient> createState() => _AllPatientState();
}

class _AllPatientState extends State<AllPatient> {
  late List<Patients>? _patientModel = [];

  // final String doctorsUrl = "http://192.168.20.46:8080/api/doctors";
  //  final String doctorsUrl = "https://render2-les1.onrender.com/v1/api/doctor";
  // final String doctorsUrl = "http://localhost:8080/v1/api/doctor";
  final String doctorsUrl = "http://192.168.20.40:8080/v1/api/patient";

  void _getPatients() async {
    const storage = FlutterSecureStorage();
    try {
      var value = await storage.read(key: 'token');
      print("------value------");
      print(value);
      var response = await http.get(Uri.parse(doctorsUrl), headers: {
        "content-type": "application/json",
        "Authorization": "Bearer $value"
      });
      _patientModel = patientsFromJson(response.body);
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
    _getPatients();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Appointed Patients:"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/addPatient", (route) => true);
                print("AddPatient Button Clicked");
              },
              icon: Icon(Icons.timer)),
          IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, "/myHome", (route) => false);
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: _patientModel == null
          ? const Center(
              child: LinearProgressIndicator(),
            )
          : Center(
              child: ListView.builder(
                itemCount: _patientModel!.length,
                itemBuilder: (context, Index) {
                  return ListTile(
                    // leading: FlutterLogo(size: 72.0),
                    leading: Icon(Icons.person),
                    title: Text(_patientModel![Index].lastName.toString()),
                    subtitle:
                        Text(_patientModel![Index].departmentName.toString()),
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
                        IconButton(
                          onPressed: () {
                            // Navigator.pushNamedAndRemoveUntil(
                            //     context, "/patientsInvoice", (route) => false);

                            // Navigator.pushAndRemoveUntil<dynamic>(
                            //   context,
                            //   MaterialPageRoute<dynamic>(
                            //     builder: (BuildContext context) =>
                            //         PatientsInvoice())
                            //     (route) =>
                            //         false, //if you want to disable back feature set to false

                            // );
                            Navigator.pushAndRemoveUntil<dynamic>(
                              context,
                              MaterialPageRoute<dynamic>(
                                builder: (BuildContext context) => TestInvoice(
                                  task: Patients(
                                      id: _patientModel![Index].id,
                                      lastName: _patientModel![Index]
                                          .lastName
                                          .toString(),
                                      address1: _patientModel![Index]
                                          .address1
                                          .toString(),
                                      departmentName: _patientModel![Index]
                                          .departmentName
                                          .toString(),
                                      email: _patientModel![Index]
                                          .email
                                          .toString(),
                                      country: _patientModel![Index]
                                          .country
                                          .toString()),
                                ),
                              ),
                              (route) =>
                                  false, //if you want to disable back feature set to false
                            );
                          },
                          icon: const Icon(Icons.report),
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
