import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hospital_management_system/ClassWork/pages/rowSingleChildScrollView.dart';
import 'package:hospital_management_system/bodyMain.dart';


class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hospital Management"),
        centerTitle: true,

        // leading: const Icon(Icons.account_balance_sharp),
        actions: [
        // IconButton(
        //     onPressed: () {
        //       print("aaaa");
        //     },
        //     icon: Icon(Icons.account_balance_sharp)),
        // IconButton(
        //     onPressed: () {
        //       print("bbbb");
        //     },
        //     icon: Icon(Icons.account_balance_wallet)),
        // IconButton(
        //     onPressed: () {
        //       print("aaaa");
        //     },
        //     icon: Icon(Icons.account_balance_sharp)),
        IconButton(
               onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, "/myLoginScreen", (route) => true);
          print("Login Button Clicked");
        },
            icon: Icon(Icons.logout)),
        ],
      ),
      // body: Center(
      //   child: Text(
      //       "Get all medical services. Take treatment from home. Book your appointment. Our team is ready to welcome you"),
      // ),

      // body: PracticeN2(),
       body: BodyMain(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(197, 230, 230, 241),
                ),
                child: Center(
                  child: Text('Admin Panel',
                      style:
                          TextStyle(fontSize: 35, fontFamily: "bolt-semibold")),
                )),
            ListTile(
              title: Text("Departments"),
              subtitle: Text("The hospital has 20 departments..."),
              leading: CircleAvatar(
                // child: Icon(Icons.class_),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, "/allDepartment", (route) => true);
                        print("Department Button Clicked");
                      },
                      icon: Icon(Icons.class_)),
              ),
              // trailing: Icon(Icons.account_circle),
            ),
            ListTile(
              title: Text("Doctors"),
              subtitle: Text("See Doctors list..."),
              leading: CircleAvatar(
                // child: Icon(Icons.health_and_safety),
                 child: IconButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, "/doctors", (route) => true);
                        print("Doctors Button Clicked");
                      },
                      icon: Icon(Icons.health_and_safety)),
              ),
              // trailing: Icon(Icons.account_circle),
            ),
            ListTile(
              title: Text("Patients"),
              subtitle: Text("Appointed patients information..."),
              leading: CircleAvatar(
                // child: Icon(Icons.info_rounded),
                 child: IconButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, "/allPatient", (route) => true);
                        print("Firebase Button Clicked");
                      },
                      icon: Icon(Icons.info_rounded)),
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
                // child: Icon(Icons.find_in_page),
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/addImage", (route) => true);
                      print("addImage Button Clicked");
                    },
                    icon: Icon(Icons.find_in_page)),
              ),
              // trailing: Icon(Icons.account_circle),
            ),
            ListTile(
              title: Text("Admission"),
              subtitle: Text("All admission information..."),
              leading: CircleAvatar(
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/fireBaseAdd", (route) => true);
                      print("fireBaseAdd Button Clicked");
                    },
                    icon: Icon(Icons.arrow_forward)),
              ),
              // trailing: Icon(Icons.account_circle),
            ),
            ListTile(
                title: Text("Appointment"),
                subtitle: Text("Book an appointment.."),
                leading: CircleAvatar(
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, "/addPatient", (route) => true);
                        print("AddPatient Button Clicked");
                      },
                      icon: Icon(Icons.timer)),
                )
                // trailing: Icon(Icons.account_circle),
                ),
          ],
        ),
      ),
      // endDrawer: Container(),
      // bottomNavigationBar: Container(),// AppBer button is not working
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.pushNamedAndRemoveUntil(context, "/myLoginScreen", (route) => true);
      //     print("Login Button Clicked");
      //   },
      //   elevation: 0,
      //   child: Icon(Icons.logout),
      //   backgroundColor: Colors.greenAccent,
      // ),
    );
  }
}
