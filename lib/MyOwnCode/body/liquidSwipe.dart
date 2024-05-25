// LiquidSwipe--- Page change style
import 'package:flutter/material.dart';
import 'package:hospital_management_system/MyOwnCode/body/page1.dart';
import 'package:hospital_management_system/MyOwnCode/body/page2.dart';
import 'package:hospital_management_system/MyOwnCode/body/page3.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class PracticeN8 extends StatelessWidget {
  const PracticeN8({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = [
      Page1(),
      Page2(),
      Page3(),
      Page1(),
      Page2(),
      Page3(),
      Container(
        color: Colors.amberAccent,
        height: double.infinity,
        width: double.infinity,
      ),
      Container(
        color: Colors.cyan,
        height: double.infinity,
        width: double.infinity,
      ),
      Container(
        color: Colors.teal,
        height: double.infinity,
        width: double.infinity,
      ),
      Container(
        color: Colors.amberAccent,
        height: double.infinity,
        width: double.infinity,
      ),
      Container(
        color: Colors.cyan,
        height: double.infinity,
        width: double.infinity,
      ),
      Container(
        color: Colors.teal,
        height: double.infinity,
        width: double.infinity,
      )
    ];

    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableLoop: true,
        slideIconWidget: Icon(Icons.arrow_back_ios),
        fullTransitionValue: 125,
        // waveType: WaveType.liquidReveal,
        positionSlideIcon: 0.5,
      ),
    );
  }
}