import 'package:flutter/material.dart';
import 'package:hospital_management_system/MyOwnCode/body/page1.dart';
import 'package:hospital_management_system/MyOwnCode/body/page2.dart';
import 'package:hospital_management_system/MyOwnCode/body/page3.dart';

class MyFirstStateFullW extends StatefulWidget {
  const MyFirstStateFullW({Key? key}) : super(key: key);

  @override
  State<MyFirstStateFullW> createState() => _MyFirstStateFullWState();
}

class _MyFirstStateFullWState extends State<MyFirstStateFullW> {
  PageController _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Page1(),
          Page2(),
          Page3(),
        ],
      )),
    );
  }
}