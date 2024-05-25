import 'package:flutter/material.dart';
import 'package:hospital_management_system/MyOwnCode/body/page1.dart';
import 'package:hospital_management_system/MyOwnCode/body/page2.dart';
import 'package:hospital_management_system/MyOwnCode/body/page3.dart';

class pracN12 extends StatelessWidget {
  const pracN12({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.class_),
            ),
            Tab(
              icon: Icon(Icons.medical_services),
            )
          ]),
        ),
        body: TabBarView(
          children: [
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
        bottomNavigationBar: Container(),
      ),
    );
  }
}