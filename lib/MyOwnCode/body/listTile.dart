//ListTail It used to design a list of data
import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              ListTile(
                title: Text("Departments"),
                subtitle: Text("The hospital has 20 departments..."),
                leading: CircleAvatar(
                  child: Icon(Icons.class_),
                ),
                // trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("Doctors"),
                subtitle: Text("See Doctors list..."),
                leading: CircleAvatar(
                  child: Icon(Icons.health_and_safety),
                ),
                // trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("Patients"),
                subtitle: Text("Appointed patients information..."),
                leading: CircleAvatar(
                  child: Icon(Icons.info_rounded),
                ),
                // trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("Bill"),
                subtitle: Text("Get your bill invoice..."),
                leading: CircleAvatar(
                  child: Icon(Icons.money_sharp),
                ),
                // trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("Insurance"),
                subtitle: Text("Available insurance..."),
                leading: CircleAvatar(
                  child: Icon(Icons.confirmation_num),
                ),
                // trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("Diagnosis"),
                subtitle: Text("Patients diagnosis information.."),
                leading: CircleAvatar(
                  child: Icon(Icons.find_in_page),
                ),
                // trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("Admission"),
                subtitle: Text("Confirn your admission..."),
                leading: CircleAvatar(
                  child: Icon(Icons.arrow_forward),
                ),
                // trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("Appointment"),
                subtitle: Text("Book an appointment.."),
                leading: CircleAvatar(
                  child: Icon(Icons.timer),
                ),
                // trailing: Icon(Icons.account_circle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}