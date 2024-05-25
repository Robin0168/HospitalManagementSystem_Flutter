import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hospital_management_system/ClassWork/model/patients.dart';

class PatientsInvoice extends StatefulWidget {
  final Patients? task;
  const PatientsInvoice({this.task});

  @override
  State<PatientsInvoice> createState() => _PatientsInvoiceState();
}

class _PatientsInvoiceState extends State<PatientsInvoice> {
  String lastname = ""; // Ensure name is initialized
  String departmentName = "";
  String country = "";
  String address1 = "";
  String email = "";
  @override
  void initState() {
    super.initState(); // Call super.initState()
    if (widget.task != null) {
      lastname = widget.task!.lastName.toString();
      address1 = widget.task!.address1.toString();
      country = widget.task!.country.toString();
      departmentName = widget.task!.departmentName.toString();
      email = widget.task!.email.toString();
      print(lastname);
      print(departmentName);
      print(address1);
      print(country);
      print(email);
      print("-----------------------------");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          color: Color.fromARGB(255, 145, 131, 131),
          child: Column(
            children: [
              Container(
                  child: Row(
                children: [
                  Container(
                    // color:Colors.red,
                    child: Text("Hospital Management System"),
                  ),
                  Container(
                    child: Text("                               "),
                  ),
                  Container(child: Text("Rreceipt"))
                ],
              )),
              Center(
                child: Text("test" +
                    lastname +
                    departmentName +
                    country +
                    address1 +
                    email), // Use name in Text widget
              ),
              Center(
                child: Text("test2"), // Use name in Text widget
              ),
              Center(
                child: Text("-------------------------------------"),
              ),
              Center(
                child: Text("Total Bill = Tk 1000.00"),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, "/myHome", (route) => true);
            print("Login Button Clicked");
          },
          elevation: 0,
          child: Icon(Icons.logout),
          backgroundColor: Color.fromARGB(255, 190, 203, 197),
        ),
      ),
    );
  }
}
