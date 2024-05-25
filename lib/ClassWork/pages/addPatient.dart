import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hospital_management_system/ClassWork/model/patients.dart';
import 'package:hospital_management_system/ClassWork/pages/allPatients.dart';
import 'package:http/http.dart' as http;

class AddPatient extends StatefulWidget {
  final Patients? psModel;
  AddPatient({this.psModel});

  @override
  _AddPatientState createState() => _AddPatientState();
}

class _AddPatientState extends State<AddPatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Patient information: "),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: PatientInfoForm(psModel2: widget.psModel),
      ),
    );
  }
}

class PatientInfoForm extends StatefulWidget {
  final Patients? psModel2;
  PatientInfoForm({this.psModel2});

  @override
  _PatientInfoFormState createState() => _PatientInfoFormState();
}

class _PatientInfoFormState extends State<PatientInfoForm> {
  final _formKey = GlobalKey<FormState>();
  final _passKey = GlobalKey<FormFieldState>();

  int _id = 0;
  String _lastName = '';
  String _address1 = '';
  String _city = '';
  String _country = '';
  String _departmentName = '';
  String _email = '';

  final String addPatientUrl = 'http://192.168.20.40:8080/v1/api/patient';

  void patientData() async {
    var reqbody = {
      "lastName": _lastName,
      "address1": _address1,
      "country": _country,
      "city": _city,
      "departmentName": _departmentName.toString()
    };
    var response = await http.post(Uri.parse(addPatientUrl),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(reqbody));

    var jsonResponse = jsonDecode(response.body);
    const storage = FlutterSecureStorage();
    await storage.write(key: 'token', value: jsonResponse['jwtToken']);

    print(jsonResponse);
    print(response.statusCode);
  }

  @override
  void initState() {
    // TODO: implement initState
    if (widget.psModel2 != null) {
      _lastName = widget.psModel2!.lastName.toString();
      _departmentName = widget.psModel2!.departmentName.toString();
      _id = widget.psModel2!.id!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: ListView(
          children: getFormWidget(),
        ));
  }

  List<Widget> getFormWidget() {
    List<Widget> formWidget = [];

    formWidget.add(TextFormField(
      initialValue: _lastName,
      decoration:
          const InputDecoration(labelText: 'Enter Name', hintText: 'Name'),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter a name';
        } else {
          return null;
        }
      },
      onSaved: (value) {
        setState(() {
          _lastName = value.toString();
        });
      },
    ));
    validateEmail(String? value) {
      if (value!.isEmpty) {
        return 'Please enter mail';
      }

      Pattern pattern =
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regex = RegExp(pattern.toString());
      if (!regex.hasMatch(value.toString())) {
        return 'Enter Valid Email';
      } else {
        return null;
      }
    }

    formWidget.add(TextFormField(
      decoration:
          const InputDecoration(labelText: 'Enter Email', hintText: 'Email'),
      keyboardType: TextInputType.emailAddress,
      validator: validateEmail,
      onSaved: (value) {
        setState(() {
          _email = value.toString();
        });
      },
    ));
    formWidget.add(TextFormField(
      decoration: const InputDecoration(
          hintText: 'Department', labelText: 'Enter Department Name'),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter age';
        } else {
          return null;
        }
      },
      onSaved: (value) {
        setState(() {
          _departmentName = value.toString();
        });
      },
    ));
    Future<void> onPressedSubmit() async {
      _formKey.currentState?.save();

      print("Name " + _lastName);
      print("Email " + _email);
      print("DepartmentName " + _departmentName.toString());

      patientData();
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Form Submitted')));

      Navigator.pushAndRemoveUntil<dynamic>(
        context,
        MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => AllPatient(),
        ),
        (route) => false,
      );
    }

    formWidget.add(ElevatedButton(
        child: const Text('Submit'), onPressed: onPressedSubmit));

    formWidget.add(ElevatedButton(
        child: const Text('Home'),
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
              context, "/myHome", (route) => true);
        }));
    return formWidget;
  }
}
