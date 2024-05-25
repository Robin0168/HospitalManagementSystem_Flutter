import 'package:flutter/material.dart';
import 'package:hospital_management_system/MyOwnCode/body/page1.dart';
import 'package:hospital_management_system/MyOwnCode/body/page2.dart';
import 'package:hospital_management_system/MyOwnCode/body/page3.dart';



class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyBottomNavigationBar> {
  var _currentState = 1;
  final pages = [
    Page3(),
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentState,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(86, 47, 76, 192),
              label: "Home",
              icon: Icon(Icons.account_box_outlined)),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(86, 44, 204, 92),
              label: "Chat",
              icon: Icon(Icons.call)),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(86, 204, 44, 185),
              label: "Appointment",
              icon: Icon(Icons.pan_tool)),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(87, 204, 175, 44),
              label: "Setting",
              icon: Icon(Icons.pan_tool)),
        ],
        onTap: (index) {
          setState(() {
            _currentState = index;
          });
        },
      ),
      body: pages[_currentState],
    );
  }
}